# data_gen_scan4.py
import numpy as np

Nr = 128
Nth = 64
n_samples = Nr * Nth

samples = []
for _ in range(n_samples):
    # Generate 65-bit random integer manually
    val = (np.random.randint(0, 2**32) << 33) | np.random.randint(0, 2**33)
    samples.append(val)

with open("raw65_test.bin", "wb") as f:
    for val in samples:
        f.write(val.to_bytes(9, byteorder='little'))

print("raw65_test.bin generated with 8192 samples (65-bit each).")

