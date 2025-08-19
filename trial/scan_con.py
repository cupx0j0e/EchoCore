#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
Ultrasound scan conversion demo with support for:
  1) Raw 1-bit data (e.g., 65 samples, 1 bit each)  -> unpack -> tiny polar image
  2) Structured polar frame file (sync + header + payload [+ CRC])

Outputs:
  - Displays scan-converted Cartesian image
  - Saves 'frame.mat' with both polar and Cartesian arrays

CONFIG (change as needed):
  - For raw 1-bit: set source="raw1bit", fname="raw.bin", Nr=65, Nth=1
  - For structured file: set source="file", fname="frame.bin"

Note:
  - If your bit packing uses little-endian bit order within bytes, set bitorder="little".
  - If your 65 bits represent something other than 65×1, change Nr and Nth accordingly.
"""

# -------------------- Imports --------------------
import struct, zlib
import numpy as np
import matplotlib.pyplot as plt
from scipy.io import savemat

# -------------------- Protocol (structured file) --------------------
SYNC = 0xAA55AA55
HDR_FMT = "<H H f f f f"  # Nθ, Nr, r0, Δr, θ0, Δθ  (little-endian)
HDR_SZ  = struct.calcsize(HDR_FMT)  # = 20 bytes

# -------------------- Readers --------------------
def read_frame_from_file(fname, with_crc=False):
    """Read a structured polar frame:
       [4B SYNC][20B HEADER][Nr*Nth payload (uint8)][optional 4B CRC]"""
    with open(fname, "rb") as f:
        sync_bytes = f.read(4)
        if len(sync_bytes) != 4:
            raise RuntimeError("File too short for SYNC")
        (sync,) = struct.unpack("<I", sync_bytes)
        if sync != SYNC:
            raise RuntimeError("Sync mismatch in file")

        hdr_bytes = f.read(HDR_SZ)
        if len(hdr_bytes) != HDR_SZ:
            raise RuntimeError("File too short for header")
        Nth, Nr, r0, dr, th0, dth = struct.unpack(HDR_FMT, hdr_bytes)

        n_payload = Nr * Nth
        payload = f.read(n_payload)
        if len(payload) != n_payload:
            raise RuntimeError("File too short for payload")

        if with_crc:
            crc_bytes = f.read(4)
            if len(crc_bytes) != 4:
                raise RuntimeError("File too short for CRC")
            rx_crc = struct.unpack("<I", crc_bytes)[0]
            calc_crc = zlib.crc32(hdr_bytes + payload) & 0xFFFFFFFF
            if rx_crc != calc_crc:
                raise RuntimeError("CRC mismatch in file")

    img_polar = np.frombuffer(payload, dtype=np.uint8).reshape(Nr, Nth, order="C")
    theta = th0 + np.arange(Nth, dtype=np.float32) * dth
    return img_polar, (Nth, Nr, r0, dr, theta)


def read_raw_1bit_as_polar(fname, Nr=65, Nth=1, bitorder="big"):
    """Read a raw bitstream (1 bit per sample), unpack to {0,1},
       take the first Nr*Nth bits, and reshape to (Nr, Nth)."""
    raw_bytes = np.fromfile(fname, dtype=np.uint8)
    if raw_bytes.size == 0:
        raise RuntimeError("Empty raw file")

    # Unpack bits. NumPy's default is big-endian bit order; override with bitorder if needed.
    try:
        bits = np.unpackbits(raw_bytes, bitorder=bitorder)
    except TypeError:
        # Fallback for very old NumPy that lacks bitorder=...
        bits = np.unpackbits(raw_bytes)  # big-endian within byte

    total_needed = Nr * Nth
    if bits.size < total_needed:
        raise RuntimeError(f"Not enough bits: need {total_needed}, have {bits.size}")

    bits = bits[:total_needed].astype(np.uint8)

    # Map {0,1} to {0,255} so it looks like an 8-bit image
    polar = (bits * 255).reshape(Nr, Nth, order="C")

    # Build minimal meta:
    # - r0, dr: choose simple depths (meters) — tune to your system
    # - theta: if only one angle, place it at 0 rad; otherwise spread over a small sector
    r0 = 0.0
    dr = 1.0  # arbitrary units; adjust to real meters if known
    if Nth == 1:
        theta = np.array([0.0], dtype=np.float32)
    else:
        th0 = -np.pi / 12  # -15 degrees
        th1 = +np.pi / 12  # +15 degrees
        theta = np.linspace(th0, th1, Nth, dtype=np.float32)

    meta = (Nth, Nr, float(r0), float(dr), theta.astype(np.float32))
    return polar.astype(np.uint8), meta

# -------------------- Scan Conversion --------------------
def build_inverse_map(out_w, out_h, geometry, meta):
    """Precompute kr,kθ and mask for each output pixel"""
    Nth, Nr, r0, dr, theta = meta
    th0, th1 = float(theta[0]), float(theta[-1])
    max_r = r0 + dr * (Nr - 1)

    # Output Cartesian grid in meters (or arbitrary units if dr is unitless)
    x_span = max_r * np.sin(max(abs(th0), abs(th1))) if Nth > 1 else max_r * 0.05
    xm = np.linspace(-x_span, x_span, out_w, dtype=np.float32)
    ym = np.linspace(0.0, max_r, out_h, dtype=np.float32)
    X, Y = np.meshgrid(xm, ym)

    if geometry == "sector":
        r = np.sqrt(X * X + Y * Y)
        th = np.arctan2(X, Y)
    else:
        raise NotImplementedError("Only sector geometry implemented here")

    # Source fractional indices (r,θ) -> (kr,kθ)
    dth = (theta[1] - theta[0]) if Nth > 1 else 1.0  # avoid div-by-zero
    kr = (r - r0) / dr
    kth = (th - th0) / dth

    # Valid mask
    valid = (kr >= 0) & (kr <= (Nr - 1))
    if Nth > 1:
        valid &= (th >= th0) & (th <= th1)
    else:
        # Single angle: only accept near th0 (within small tolerance)
        valid &= (np.abs(th - th0) <= (np.deg2rad(2.0)))  # ±2 degrees tolerance

    # Clip indices for neighbors (bilinear)
    kr0 = np.clip(np.floor(kr).astype(np.int32), 0, max(Nr - 2, 0))
    kr1 = np.clip(kr0 + 1, 0, Nr - 1)

    if Nth > 1:
        kth0 = np.clip(np.floor(kth).astype(np.int32), 0, max(Nth - 2, 0))
        kth1 = np.clip(kth0 + 1, 0, Nth - 1)
    else:
        kth0 = np.zeros_like(kr0, dtype=np.int32)
        kth1 = np.zeros_like(kr0, dtype=np.int32)

    # Interp weights
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

# -------------------- Main --------------------
def main(source="raw1bit", fname="raw.bin", with_crc=False,
         Nr=65, Nth=1, bitorder="big",
         out_w=512, out_h=512, geometry="sector",
         show=True, save_mat="frame.mat"):
    """
    source: "raw1bit" | "file"
      - "raw1bit": reads 1-bit samples and builds a tiny polar image
      - "file": reads structured polar frame (SYNC+HEADER+PAYLOAD[+CRC])
    """

    if source == "file":
        polar, meta = read_frame_from_file(fname, with_crc=with_crc)
    elif source == "raw1bit":
        polar, meta = read_raw_1bit_as_polar(fname, Nr=Nr, Nth=Nth, bitorder=bitorder)
    else:
        raise ValueError('source must be "raw1bit" or "file"')

    maps = build_inverse_map(out_w, out_h, geometry, meta)
    cart = bilinear_gather(polar, maps)

    # Display
    if show:
        plt.figure()
        plt.imshow(cart, cmap="gray", origin="upper")
        plt.title("B-mode (scan converted)")
        plt.axis("off")
        plt.show()

    # Save to MATLAB
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
    if save_mat:
        savemat(save_mat, mdict)
        print(f"Saved {save_mat}")

if __name__ == "__main__":
    # --------- QUICK START CONFIG ---------
    # For your case (65 samples, 1 bit each in raw.bin):
    main(
        source="raw1bit",
        fname="raw.bin",
        Nr=65,
        Nth=1,           # change if you actually have multiple angles
        bitorder="big",  # change to "little" if bits inside each byte are LSB-first
        out_w=512,
        out_h=512,
        geometry="sector",
        show=True,
        save_mat="frame.mat",
    )

    # If later you have a structured file "frame.bin":
    # main(source="file", fname="frame.bin", with_crc=False)

