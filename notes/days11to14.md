# Blog days 11 to 14 (0.1.4 to 0.2.0)

## Keywords
### Continuous-time sinusoidal signals
A continuous-time sinusoidal signal is a function of time a function of time, defined for all time values, and its waveform resembles a sine or cosine wave. These signals are periodic meaning they repeat themselves after a specific period of time called the signal's time period. In analog devices and sensors, signals are transmitted and recorded as continuous-time sinusoidal signals.

A continuous-time sinusoidal signal is represented by the eqn:
```
x(t) = Acos(wt + φ)
where: 
A is the signal's amplitude;
t is the time
φ is the phase
w is the angular frequency (2πf)
```

### Discrete-time sinusoidal signals
A discrete-time sinusoidal signal is a sequence of numbers that oscillates in a sinusoidal pattern, but is only defined at discrete points in time, typically represented by integers. These signals are therefore the  digital equivalents of continuous-time sinusoidal signals. These signals are imitations of their continuous counterparts, and the quality of these imitations can be improved by increasing the sampling rate of the sampling device.

A discrete-time sinusoidal signal is represented by the eqn:
```
x(n) = Acos(wn + φ) 
where:
A is the signal's amplitude
t is the time
φ is the phase
n is an integer
w is the angular frequency (2πf)
```

### Properties of discrete-time sinusoidal signals
- Discrete-time signals are periodic only if f is a rational number.
- Two signals having the same phase but differing in angular frequencies by an integral multiple of 2π represent the same signal
- The rate of oscillation is highest when |w| = π or |f| = 1/2 

### Sampling theorem
The sampling theorem says that a signal can be represented in samples and be recovered back if the sampling frequency is greater than or equal to twice the maximum frequency present in the signal.

- Sampling<br>
Reduction of a continuous time signal to a discrete time signal

- Message Signal<br> 
The signal that carries the information we wish to process

- The process of sampling:<br>
The process of sampling consists essentially of a multiplier which is responsible for multiplying the incoming continuous-time sinusoidal signal with a periodic signal C(t) which fires a high signal at regular intervals effectively sampling the incoming signal. The time interval between the firing of two adjacent high signals is called the sampling time/interval   

### CORDIC
CORDIC or co-ordinate rotation digital computer refers to an algorithm which is used extensively by computers to calculate logarithms, sines, cosines and square roots along with many other functions. It is a simple and efficient algorithm, and proves quite useful for devices like simple microcontrollers and FPGAs where hardware multipliers are not available.

For the computation of sines and cosines, the algorithm involves the rotation of a vector by certain predecided angles until the vector is rotated to the specified angle (the angle for which we wish to sin, cos) and then finding the value of the trignometric functions through the use of rotation matrices.

## Things I accomplished
- Thoroughly read the blog provided to us at the start
- Started and finished installing Vivado
- Thoroughly studied the additional resources provided to us (except the repo)
