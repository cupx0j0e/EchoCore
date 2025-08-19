# pip install pyserial numpy matplotlib scipy
import numpy as np
import matplotlib.pyplot as plt
from scipy.io import savemat

# -------------------- 65-bit Frame Reader --------------------
def read_65bit_frame_from_file(fname, Nr, Nth):
    """Read a frame where each sample is 65 bits (9 bytes)"""
    n_samples = Nr * Nth
    samples = []

    with open(fname, "rb") as f:
        for _ in range(n_samples):
            raw = f.read(9)  # 9 bytes per 65-bit sample
            if len(raw) < 9:
                raise RuntimeError(f"Not enough 65-bit samples: need {n_samples}")
            # Convert 9 bytes to integer
            val = int.from_bytes(raw, byteorder="little", signed=False)
            samples.append(val)

    # Convert to numpy array (object dtype to handle >64-bit ints)
    samples = np.array(samples, dtype=object)
    # Normalize to 0-255 for image display
    max_val = 2**65 - 1
    img = ((samples.astype(np.float64) / max_val) * 255).astype(np.uint8)
    # Reshape into polar coordinates
    polar = img.reshape(Nr, Nth, order="C")

    # Add dummy geometry for testing
    r0 = 0.0
    dr = 0.001  # 1 mm per sample
    theta = np.linspace(-np.pi/4, np.pi/4, Nth, dtype=np.float32)

    return polar, (Nth, Nr, r0, dr, theta)


# -------------------- Scan Conversion --------------------
def build_inverse_map(out_w, out_h, geometry, meta):
    Nth, Nr, r0, dr, theta = meta
    th0, th1 = float(theta[0]), float(theta[-1])
    max_r = r0 + dr * (Nr - 1)

    x_span = max_r * np.sin(max(abs(th0), abs(th1)))
    xm = np.linspace(-x_span, x_span, out_w, dtype=np.float32)
    ym = np.linspace(0.0, max_r, out_h, dtype=np.float32)
    X, Y = np.meshgrid(xm, ym)

    if geometry == "sector":
        r = np.sqrt(X * X + Y * Y)
        th = np.arctan2(X, Y)
    else:
        raise NotImplementedError("Only sector geometry implemented")

    kr = (r - r0) / dr
    kth = (th - th0) / (theta[1] - theta[0])

    valid = (kr >= 0) & (kr <= (Nr - 1)) & (th >= th0) & (th <= th1)

    kr0 = np.clip(np.floor(kr).astype(np.int32), 0, Nr - 2)
    kr1 = kr0 + 1
    kth0 = np.clip(np.floor(kth).astype(np.int32), 0, Nth - 2)
    kth1 = kth0 + 1

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
def main(fname="raw65_test.bin", out_w=512, out_h=512, geometry="sector"):
    polar, meta = read_65bit_frame_from_file(fname, Nr=128, Nth=64)
    maps = build_inverse_map(out_w, out_h, geometry, meta)
    cart = bilinear_gather(polar, maps)

    # Display
    plt.figure()
    plt.imshow(cart, cmap="gray", origin="upper")
    plt.title("B-mode (65-bit scan converted)")
    plt.axis("off")
    plt.show()

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
    savemat("frame65.mat", mdict)
    print("Saved frame65.mat for MATLAB")


if __name__ == "__main__":
    main("raw65_test.bin")

