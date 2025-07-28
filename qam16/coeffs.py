import math

pi = math.pi

def coeffs(n, rof, sps):
    if n != 0:
        term1 = math.sin(pi * n * (1 - rof) / sps)
        term2 = (4 * rof * n * math.cos(pi * n * (1 + rof) / sps)) / sps
        term3 = pi * n * (1 - ((4 * rof * n / sps) ** 2))

        return ((term1 + term2) / term3)
    else:
        term1 = rof * (4 / pi - 1)
        term2 = math.sqrt(sps)

        return ((1 + term1) / term2)
    
for i in range(-5, 6):
    print(f"Coefficient {i}: {coeffs(i, 0.25, 10)}")