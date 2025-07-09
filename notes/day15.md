# Blog Day 15 (0.2.2)

## Keywords
### Process of 16 QAM digital communication
As mentioned in previous blogs, 16 QAM digital communication revolves around encoding data into a sinusoidal wave's amplitude and phase. In the eyes of the transmitter, this process is understood better using a constellation diagram. A constellation diagram is similar to a phasor diagram: the diagram consists of a vector possesing both an amplitude and phase. The amplitude of the vector is represented by its length while its phase is represented by the angle the vector makes with the horizontal axis.

The transmitter can track the vector's "y coordinate" as a sine wave while the "x coordinate can be tracked as a cosine wave these waves can then be packaged together and then be transmitted to the receiver.

At the receiver's end, the receiver can then 'scan' these waveforms mapping a sine's wave amplitude to the vector's "y coordinate" and the cosine wave's amplitude to the vector's "x coordinate" effectively reconstructing the o.g. vector at the transmitter's end. 

It's possible that this reconstructed vector does not perfectly align with the o.g. vector at the transmitter's end. This is because of noise and other interfering sources which hinder the signal's transmission. Nevertheless, since the signal sent is digital rather than analog, the data sent through the signal can easily be recovered by mapping the entire constellation diagram to all possible combinations of the initial signal.

In 16 QAM digital communication, the entire constellation diagram is thus divided into 16 regions each representing every possible combination of a 4 bit binary number.

### Beamforming
Beamforming is a signal processing technique used to focus or steer waves (like ultrasound, sound, or radio waves) using multiple sensors or antennas — such as a transducer array in ultrasound imaging.

How Beamforming works:
It controls the timing of when each transducer element sends a pulse which steers the outgoing beam to a specific angle or focal point.

Beamforming increases the focus on a specific point thereby increasing the spatial resolution; making it easier to distinguish between closely spaced structures in medical imaging. Beamforming allows one to "steer" the device's listening direction electronically without physically moving the device.

## Things I accomplished

