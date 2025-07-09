## Signal Definition

A discrete-time sinusoidal signal is defined as:

$$
x(n)=Acos⁡(ωn+θ)
$$

n∈Z

Where:

- A: Amplitude
    
- ω: Angular frequency (in radians per sample)
    
- θ\: Phase (in radians)
    
- n: Discrete time index
    

Also, since angular frequency ω=2πf, where f is the **frequency in Hz**, we can rewrite the signal as:

x(n)=Acos⁡(2πfn+θ)

---

##  Property 1: Periodicity of Discrete-Time Sinusoids

A discrete-time sinusoidal signal is **periodic** **if and only if** the frequency f is a **rational number**.

That is:

x(n)=x(n+N)

Where the **smallest** N, such that N∈Z is called the **fundamental period**.

Using the identity:

x(n)=Acos⁡(2πf0n+θ)=Acos⁡(2πf0(n+N)+θ)

This is true **if and only if**:

2πf0N=2πk, for some k∈Z

So:  $$f0=k/N$$


That is, f0 must be a **rational number** for the sinusoid to be periodic.

### Example:

If:

f0=20/30

Then the **fundamental period** =3 

> **Note**: A small change in frequency can cause a **large change** in the period due to this rationality condition.

---

## Property 2: Frequency Aliasing in Discrete Time

In discrete time, two sinusoids with angular frequencies differing by an integer multiple of 2π are **identical**.

Let:

ω1=ω0+2πk,k∈Z

Then:

x0(n)=Acos⁡(ω0n+θ)
x1(n)=Acos⁡(ω1n+θ)=Acos⁡((ω0+2πk)n+θ)

Using the identity cos⁡(α+2πm)=cos⁡(α) we have:

$$
x1(n)=x0(n)
$$

Thus, **sinusoids differing by multiples of 2π in frequency are indistinguishable** in discrete time.


property 3 highest rate of oscillation is |w|=pi(or |f|=1/2)

Given the range of angular frequency:

$$
-\pi \leq \omega \leq \pi
$$Thus 
$$
-1/2 \leq f \leq 1/2
$$

### Property 3: Maximum Oscillation Frequency:

Highest rate of oscillation is 

$$|\omega| = \pi \quad \text
{or equivalently}
\quad |f| = \frac{1}{2}
$$

