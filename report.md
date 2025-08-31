# Project Report : Echocore

## Table of Contents:
- [Project Objective]()
- [What is an FPGA and why use it?]()
- [16-QAM digital communication]()

## Project Objective
This project combines two advanced real-world FPGA applications on a single platform: B-mode ultrasound imaging and 16-QAM digital communication. It involves building Verilog modules for both applications and simulate/test them using Vivado/ISE and ModelSim. Ultrasound signal processing includes beamforming, quadrature demodulation, envelope detection, and log compression. 

For communication, a full 16-QAM system is developed using LUT-based modulators/demodulators and phase accumulators. Data output via UART/SPI will allow real-time streaming of ultrasound scans and QAM symbol recovery on a host PC using Python/MATLAB GUI. This integrated project emphasizes DSP techniques, FPGA toolchains, and real-time interfacing.

## What is an FPGA and why use it?
A Field-Programmable Gate Array (FPGA) is a type of integrated circuit that can be reconfigured or reprogrammed to implement a custom digital circuit. Unlike a microprocessor that executes software instructions sequentially, the hardware logic on an FPGA is hard-wired and executes in parallel. This allows for extremely high performance and low latency, making FPGAs ideal for tasks requiring real-time, high-throughput data processing.

The FPGA's architecture is perfectly suited for a project like EchoCore for three key reasons:

1. **Single-chip solution**: It allows for the integration of both a complex signal processing pipeline for wireless communication and an image processing pipeline for ultrasound onto a single chip, significantly reducing size, power consumption, and cost.

2. **Re-programmable and power-efficient**: Unlike Application-Specific Integrated Circuits (ASICs), FPGAs are flexible and can be reconfigured for different applications or algorithm updates. Their hardware-based parallelism is also far more power-efficient than software-based solutions for similar tasks.

3. **Enables parallel, real-time performance**: The most critical advantage for this project is the FPGA's ability to execute both the 16-QAM and Ultrasound pipelines in parallel, ensuring real-time performance for both data transfer and medical diagnostics.

## 16-QAM digital communication
### Brief overview

Quadrature Amplitude Modulation (QAM) is a modulation technique that encodes data by altering both the amplitude and phase of a carrier signal. This approach allows QAM to transmit more bits per symbol than modulation methods that only change one of these characteristics, such as Amplitude Shift Keying (ASK) or Phase Shift Keying (PSK).

### How QAM Works

QAM uses two carrier waves of the same frequency that are 90 degrees out of phase with each other. These are known as the in-phase (I) and quadrature (Q) components. Each data stream modulates the amplitude of one of these carrier waves, and the two modulated signals are then combined to create the final QAM signal. This composite signal's unique amplitude and phase combination represents a specific digital symbol.

The relationship between amplitude and phase for each symbol is visualized on a constellation diagram. Each point on this diagram, known as a constellation point, corresponds to a unique combination of amplitude and phase, which in turn represents a specific binary value. The number of points on the constellation diagram determines the number of bits each symbol can carry, and this is what defines the "order" of QAM (e.g., 16-QAM, 64-QAM, 256-QAM). For example, 16-QAM uses 16 points, allowing it to represent 4 bits per symbol (2^4=16).

### System Overview

#### Flowchart
The signal flow involved in the process is shown by the flowchart below

![16qam flowchart](./qam16/assets/qam_flow.png)

### Data Input
Currently, the input for the entire process is prepared by making use of a 4-bit linear-feedback shift register. A linear-feedback shift register (LFSR) is a shift-register where the input bit at each step is a function (usually XOR) of some of the previous bits. This makes LFSRs perfect for pseudorandom number generation in hardware.

The implementation of stage can be found [here](./qam16/verilog/transmission/four_pr.v)

### Symbol Mapping
The process of symbol mapping involves splitting the incoming 4-bit data into two 2-bit components (which serve as the in-phase and quadrature components respectively) and then mapping the resulting vector onto a constellation map. 

<div align='center'>
    <h4>For Example:</h4>
    <table style='text-align: center'>
        <tr>
            <th>In-phase</th>
            <th>Symbol Map</th>
            <th>Quadrature</th>
            <th>Symbol Map</th>
        </tr>
        <tr>
            <td>00</td>
            <td>-3</td>
            <td>00</td>
            <td>-3j</td>
        </tr>
        <tr>
            <td>01</td>
            <td>-1</td>
            <td>01</td>
            <td>-1j</td>
        </tr>
        <tr>
            <td>11</td>
            <td>3</td>
            <td>11</td>
            <td>3j</td>
        </tr>
        <tr>
            <td>10</td>
            <td>1</td>
            <td>10</td>
            <td>1j</td>
        </tr>
    </table>
</div>

**NOTE :** Since the quadrature components of the input data are 90deg out of phase from the inphase components, they are represented along with a 'j' in symbol mapping.

In QAM systems (like this one), symbol mapping is usually accomplished through the use of grey codes. The grey code is a binary numbering scheme where adjacent numbers differ only by a single bit. The use of gray codes resolves a major issue which lies with QAM systems: nearest-neighbour errors.
Nearest-neighbour errors occur when a received point slips to a neighbouring point on the constellation map due to external noise or distorsion. Since grey codes differ only by single bits the bit error rate (BER) is reduced significantly.

In verilog symbol mapping is achieved through the use of:
- Bit Slicing to split the 4-bit input data to two 2-bit components
- Case statements (multiplexers) to map the components onto a constellation map

The implementation of stage can be found [here](./qam16/verilog/transmission/symmap.v)