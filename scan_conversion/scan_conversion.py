# pip install pyserial numpy matplotlib scipy
import struct, zlib
import numpy as np
import serial
import matplotlib.pyplot as plt
from scipy.io import savemat

# -------------------- Protocol --------------------
SYNC = 0xAA55AA55
HDR_FMT = "<H H f f f f"  # Nθ, Nr, r0, Δr, θ0, Δθ
HDR_SZ  = struct.calcsize(HDR_FMT)

# -------------------- Frame Reader --------------------

def read_frame_from_file(fname, with_crc=False):
    with open(fname, "rb") as f:
        sync_bytes = f.read(4)
        (sync,) = struct.unpack("<I", sync_bytes)
        if sync != SYNC:
            raise RuntimeError("Sync mismatch in file")

        hdr_bytes = f.read(HDR_SZ)
        Nth, Nr, r0, dr, th0, dth = struct.unpack(HDR_FMT, hdr_bytes)

        n_payload = Nr * Nth
        payload = f.read(n_payload)

        if with_crc:
            rx_crc = struct.unpack("<I", f.read(4))[0]
            calc_crc = zlib.crc32(hdr_bytes + payload) & 0xFFFFFFFF
            if rx_crc != calc_crc:
                raise RuntimeError("CRC mismatch in file")

    img_polar = np.frombuffer(payload, dtype=np.uint8).reshape(Nr, Nth, order="C")
    theta = th0 + np.arange(Nth, dtype=np.float32) * dth
    return img_polar, (Nth, Nr, r0, dr, theta)

# -------------------- Scan Conversion --------------------
def build_inverse_map(out_w, out_h, geometry, meta):
    """Precompute kr,kθ and mask for each output pixel"""
    Nth, Nr, r0, dr, theta = meta
    th0, th1 = float(theta[0]), float(theta[-1])
    max_r = r0 + dr * (Nr - 1)

    # Output Cartesian grid in meters
    x_span = max_r * np.sin(max(abs(th0), abs(th1)))
    xm = np.linspace(-x_span, x_span, out_w, dtype=np.float32)
    ym = np.linspace(0.0, max_r, out_h, dtype=np.float32)
    X, Y = np.meshgrid(xm, ym)

    if geometry == "sector":
        r = np.sqrt(X * X + Y * Y)
        th = np.arctan2(X, Y)
    else:
        raise NotImplementedError("Only sector geometry implemented here")

    # Source indices
    kr = (r - r0) / dr
    kth = (th - th0) / (theta[1] - theta[0])

    # Valid mask
    valid = (kr >= 0) & (kr <= (Nr - 1)) & (th >= th0) & (th <= th1)

    # Clip indices
    kr0 = np.clip(np.floor(kr).astype(np.int32), 0, Nr - 2)
    kr1 = kr0 + 1
    kth0 = np.clip(np.floor(kth).astype(np.int32), 0, Nth - 2)
    kth1 = kth0 + 1

    # Interp weights
    wr = (kr - kr0).astype(np.float32)
    wt = (kth - kth0).astype(np.float32)

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
def main(source="file", fname="frame.bin", port="/dev/ttyUSB0", baud=3000000,
         out_w=512, out_h=512, geometry="sector"):

    if source == "uart":
        polar, meta = read_frame_from_uart(port=port, baud=baud)
    else:
        polar, meta = read_frame_from_file(fname)

    maps = build_inverse_map(out_w, out_h, geometry, meta)
    cart = bilinear_gather(polar, maps)

    # Display
    plt.figure()
    plt.imshow(cart, cmap="gray", origin="upper")
    plt.title("B-mode (scan converted)")
    plt.axis("off")
    plt.show(block=False)

    # Save to MATLAB
    mdict = {
        "polar": polar,
        "cart": cart,
        "Nth": np.uint16(meta[0]),
        "Nr": np.uint16(meta[1]),
        "r0_m": np.float32(meta[2]),
        "dr_m": np.float32(meta[3]),
        "theta_rad": np.array(meta[4], dtype=np.float32),
    }
    savemat("frame.mat", mdict)
    print("Saved frame.mat for MATLAB")

if __name__ == "__main__":
    # Choose source: "uart" or "file"
    main(source="file", fname="frame.bin")
    # main(source="uart", port="/dev/ttyUSB0", baud=3000000)   this proper ?
