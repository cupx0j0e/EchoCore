## Introduction

In modern systems, **digital technologies** are extensively used for signal processing. However, most real-world signals are **continuous-time (analog)** in nature. To process them digitally, we must convert them into **discrete-time signals** using a process called **sampling**.

---

##  What is Sampling?

**Sampling** is the reduction of a continuous-time signal \( m(t) \) into a discrete-time signal by taking periodic samples.

This is done using a **sampler**, which acts as a multiplier of the original signal with a **periodic impulse train**.

---

##  Impulse Train Representation

The impulse train \( c(t) \) is defined as:

$$
c(t) = \sum_{n=-\infty}^{\infty} \delta(t - nT_s)
$$

Where:
- Ts  is the sampling period

The **weight** of each impulse is equal to the **instantaneous value** of \( m(t) \).

---

##  Sampled Signal

The sampled signal \( s(t) \) is given by:

$$
s(t) = m(t) \cdot c(t)
$$

---

## Frequency Domain Analysis

Using the Fourier Transform:

$$
S(\omega) = \frac{1}{2\pi} \left[ M(\omega) * C(\omega) \right]
$$
$$
C(\omega) = \omega_s \sum_{n=-\infty}^{\infty} \delta(\omega - n\omega_s)
$$
$$
S(\omega) = \frac{1}{2\pi} \left[ M(\omega) * \omega_s \sum_{n=-\infty}^{\infty} \delta(\omega - n\omega_s) \right]
$$

This simplifies to:

$$
S(\omega) = \frac{1}{T_s} \sum_{n=-\infty}^{\infty} M(\omega - n\omega_s)
$$

> The spectrum of the sampled signal is a **periodic replication** of the original spectrum \( M(w) \), spaced at intervals of ws ).

---

##  Sampling Theorem

**Sampling Theorem** :

> A signal can be **perfectly reconstructed** from its samples if the sampling frequency is **at least twice** the highest frequency in the signal.

### Mathematically:

$$
f_s \geq 2f_m \quad \text{or} \quad \omega_s \geq 2\omega_m
$$

### Three Cases:

1. **\( \omega_s > 2\omega_m \)**:
   - Gaps between spectra.
   -  No aliasing.
   -  Perfect reconstruction possible.

2. **\( \omega_s = 2\omega_m \)**:
   - Spectra just touch.
   -  Sensitive to imperfections.

3. **\( \omega_s < 2\omega_m \)**:
   - Spectra overlap.
   -  Aliasing occurs.
   -  Perfect reconstruction not possible.

---

##  Conclusion

To accurately digitize a signal:

- It must be **band-limited**.
- The **sampling rate must be ≥ 2×** the maximum frequency component.

This forms the basis of the **sampling theorem**, a key concept in digital signal processing.
