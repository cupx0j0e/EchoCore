#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
Decode a binary file containing packed 65-bit samples, map to 8-bit grayscale,
reshape to (Nr, Nth) polar frame, scan-convert to Cartesian, display and save .mat.

Usage: edit the parameters in __main__ or call main(...) programmatically.

Important params you may need to change:
 - fname: path to binary file containing packed 65-bit samples
 - Nr: samples (depth) per line
 - Nth: number of lines (angles) per frame
 - bitorder: "big" (MSB-first) or "little" (LSB-first) bit ordering for unpackbits
 - signed: True/False (whether 65-bit words are two's complement)
 - scale_min/scale_max: expected dynamic range of your 65-bit measurements
"""

import numpy as np
import struct, zlib
import matplotlib.pyplot as plt
from scipy.io import savemat

# -------------------- Scan conversion utilities (same as earlier) --------------------
def build_inverse_map(out_w, out_h, geometry, meta):
    Nth, Nr, r0, dr, theta = meta
    th0, th1 = float(theta[0]), float(theta[-1])
    max_r = r0 + dr * (Nr - 1)
    x_span = max_r * np.sin(max(abs(th0), abs(th1))) if Nth > 1 else max_r * 0.05
    xm = np.linspace(-x_span, x_span, out_w, dtype=np.float32)
    ym = np.linspace(0.0, max_r, out_h, dtype=np.float32)
    X, Y = np.meshgrid(xm, ym)
    if geometry == "sector":
        r = np.sqrt(X * X + Y * Y)
        th = np.arctan2(X, Y)
    else:
        raise NotImplementedError("Only sector geometry implemented")
    dth = (theta[1] - theta[0]) if Nth > 1 else 1.0
    kr = (r - r0) / dr
    kth = (th - th0) / dth
    valid = (kr >= 0) & (kr <= (Nr - 1))
    if Nth > 1:
        valid &= (th >= th0) & (th <= th1)
    else:
        valid &= (np.abs(th - th0) <= np.deg2rad(2.0))
    kr0 = np.clip(np.floor(kr).astype(np.int32), 0, max(Nr - 2, 0))
    kr1 = np.clip(kr0 + 1, 0, Nr - 1)
    if Nth > 1:
        kth0 = np.clip(np.floor(kth).astype(np.int32), 0, max(Nth - 2, 0))
        kth1 = np.clip(kth0 + 1, 0, Nth - 1)
    else:
        kth0 = np.zeros_like(kr0, dtype=np.int32)
        kth1 = np.zeros_like(kr0, dtype=np.int32)
    wr = (kr - kr0).astype(np.float32)
    wt = (kth - kth0).astype(np.float32) if Nth > 1 else np.zeros_like(wr, dtype=np.float32)
    return (kr0, kr1, wr, kth0, kth1, wt, valid, (xm, ym))

def bilinear_gather(polar, maps):
    kr0, kr1, wr, kt0, kt1, wt, valid, _ = maps
    I00 = polar[kr0, kt0]
    I01 = polar[kr0, kt1]
    I10 = polar[kr1, kt0]
    I11 = polar[kr1, kt1]
    top = (1 - wt) * I00 + wt * I01
    bot = (1 - wt) * I10 + wt * I11
    out = (1 - wr) * top + wr * bot
    out = np.where(valid, out, 0).astype(np.uint8)
    return out

# -------------------- 65-bit reader --------------------
def read_packed_65bit_file(fname, byteorder_bitpack="big", signed=False):
    """
    Read a file of concatenated 65-bit words packed into bytes.
    - byteorder_bitpack: passed to np.unpackbits as 'big' or 'little' (MSB-first vs LSB-first)
    - signed: whether to interpret 65-bit two's complement
    Returns: 1D numpy array of Python integers (dtype=object not used) as np.uint64 where possible.
    """
    raw = np.fromfile(fname, dtype=np.uint8)
    if raw.size == 0:
        return np.array([], dtype=np.uint64)
    # Unpack bits to a flat bit array
    try:
        bits = np.unpackbits(raw, bitorder=byteorder_bitpack)  # e.g. "big" or "little"
    except TypeError:
        # older numpy fallback (assumes big-endian within bytes)
        bits = np.unpackbits(raw)

    total_bits = bits.size
    n_words = total_bits // 65  # number of full 65-bit words
    if n_words == 0:
        raise RuntimeError(f"File too short for a single 65-bit word: only {total_bits} bits present")

    bits = bits[: n_words * 65 ]  # truncate incomplete trailing bits
    bits = bits.reshape(n_words, 65)

    # Interpret each 65-bit row as integer
    # We'll compute value = sum(bits[i]*2^(64-i)) if bitorder big and MSB-first within word
    # We need to decide on endianness of bits inside the 65-bit word: we'll assume bits[:,0] is MSB of the word if byteorder_bitpack="big"
    # To be explicit: bits[row, 0] is the most significant bit of the 65-bit word (2^64) if using "big" packing.
    # If your device uses a different within-word bit order, invert bits appropriately before this step.
    # Convert each row to integer:
    powers = (1 << np.arange(64, -1, -1, dtype=np.uint64))  # 2^64 ... 2^0
    # Convert bits (0/1) to integers via dot product (safe in uint64 for 65 bits? 2^64 doesn't fit in uint64)
    # Note: 2^64 requires 65-bit width; cannot store in np.uint64 directly (overflow). We'll handle with Python int.
    ints = []
    for row in bits:
        # row is length 65, row[0] is MSB if consistent with packing
        val = 0
        for b in row:
            val = (val << 1) | int(b)
        if signed:
            # two's complement interpretation for 65-bit width
            sign_bit = 1 << (65 - 1)
            if val & sign_bit:
                # negative number
                val = val - (1 << 65)
        ints.append(val)
    ints = np.array(ints, dtype=np.int64 if signed else object)  # keep object for >64-bit positive values
    # For unsigned values > 2**63-1 we must keep Python ints (object dtype). We'll keep object dtype for safety if non-signed.
    if not signed:
        # Convert to Python int array using object dtype
        ints = np.array([int(x) for x in ints], dtype=object)
    return ints  # dtype=object for full-range safety

# -------------------- Helpers: map 65-bit ints to 0-255 --------------------
def map_ints_to_uint8(ints, signed=False, scale_min=None, scale_max=None, clip=True):
    """
    Convert array of integers (dtype=object allowed) to uint8 [0..255].
    - If scale_min/scale_max provided, map linearly: scale_min -> 0, scale_max -> 255.
    - Otherwise, use min/max of data (may be unstable for single-frame).
    - If clip True, values outside are clipped; else they wrap (not recommended).
    """
    # Convert to numpy float64 for scaling, using Python ints cast to float (may lose precision for huge values,
    # but typical use: values fit within reasonable range).
    vals = np.array([float(int(v)) for v in ints], dtype=np.float64)

    if scale_min is None:
        scale_min = float(np.min(vals))
    if scale_max is None:
        scale_max = float(np.max(vals))
    if scale_max == scale_min:
        # avoid division by zero
        mapped = np.zeros_like(vals, dtype=np.uint8)
        return mapped

    # linear mapping
    mapped = (vals - scale_min) / (scale_max - scale_min) * 255.0
    if clip:
        mapped = np.clip(mapped, 0.0, 255.0)
    return mapped.astype(np.uint8)

# -------------------- Top-level read-and-convert --------------------
def read_65bit_stream_as_polar(fname, Nr, Nth, byteorder_bitpack="big",
                              signed=False, scale_min=None, scale_max=None):
    """
    Read file containing contiguous 65-bit words and produce a polar image (Nr x Nth) uint8.
    - Nr * Nth must be <= number of decoded words; extras are truncated.
    """
    ints = read_packed_65bit_file(fname, byteorder_bitpack=byteorder_bitpack, signed=signed)
    n_words = ints.size
    needed = Nr * Nth
    if n_words < needed:
        raise RuntimeError(f"Not enough 65-bit samples: need {needed}, found {n_words}")

    ints = ints[:needed]
    # map to uint8
    u8 = map_ints_to_uint8(ints, signed=signed, scale_min=scale_min, scale_max=scale_max)
    polar = np.array(u8, dtype=np.uint8).reshape(Nr, Nth, order="C")
    # minimal meta (r0, dr, theta)
    r0 = 0.0
    dr = 1.0
    if Nth == 1:
        theta = np.array([0.0], dtype=np.float32)
    else:
        th0 = -np.pi / 6
        th1 = +np.pi / 6
        theta = np.linspace(th0, th1, Nth, dtype=np.float32)
    meta = (Nth, Nr, float(r0), float(dr), theta.astype(np.float32))
    return polar, meta

# -------------------- Main processing function --------------------
def main_65bit_to_image(fname,
                        Nr=65, Nth=128,
                        bitorder="big",
                        signed=False,
                        scale_min=None, scale_max=None,
                        out_w=512, out_h=512,
                        geometry="sector",
                        show=True, save_mat="frame.mat"):
    """
    Read packed 65-bit file, decode first frame (Nr x Nth), scan-convert and display/save.
    """
    polar, meta = read_65bit_stream_as_polar(fname, Nr=Nr, Nth=Nth,
                                            byteorder_bitpack=bitorder,
                                            signed=signed,
                                            scale_min=scale_min, scale_max=scale_max)
    maps = build_inverse_map(out_w, out_h, geometry, meta)
    cart = bilinear_gather(polar, maps)

    if show:
        plt.figure()
        plt.imshow(cart, cmap="gray", origin="upper")
        plt.title("Scan-converted (from 65-bit samples)")
        plt.axis("off")
        plt.show()

    # save
    Nth_m, Nr_m, r0_m, dr_m, theta = meta
    mdict = {
        "polar": polar.astype(np.uint8),
        "cart": cart.astype(np.uint8),
        "Nth": np.uint16(Nth_m),
        "Nr": np.uint16(Nr_m),
        "r0_m": np.float32(r0_m),
        "dr_m": np.float32(dr_m),
        "theta_rad": np.array(theta, dtype=np.float32),
    }
    savemat(save_mat, mdict)
    print(f"Saved {save_mat}")
    return polar, cart

# -------------------- Example usage: adjust parameters below --------------------
if __name__ == "__main__":
    # === EDIT THESE PARAMETERS TO MATCH YOUR DATA ===
    fname = "raw65.bin"        # your packed 65-bit-file
    Nr = 65                   # depth samples per line
    Nth = 64                  # number of angles (set to actual lines you collected)
    bitorder = "big"          # "big" if bits inside bytes are MSB-first, or "little"
    signed = False            # True if the 65-bit word is two's complement signed
    scale_min = None          # set to known minimum expected value (or None to auto)
    scale_max = None          # set to known maximum expected value (or None to auto)
    out_w = 512
    out_h = 512
    geometry = "sector"

    polar, cart = main_65bit_to_image(fname,
                                     Nr=Nr, Nth=Nth,
                                     bitorder=bitorder,
                                     signed=signed,
                                     scale_min=scale_min, scale_max=scale_max,
                                     out_w=out_w, out_h=out_h,
                                     geometry=geometry,
                                     show=True, save_mat="frame65.mat")

