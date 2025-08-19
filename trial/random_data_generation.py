import numpy as np

# Make 65 random samples (0 or 1)
samples = np.random.randint(0, 2, size=65, dtype=np.uint8)

# Pack into bytes
packed = np.packbits(samples, bitorder="big")  # 9 bytes

# Save to file
with open("raw.bin", "wb") as f:
    f.write(packed.tobytes())

