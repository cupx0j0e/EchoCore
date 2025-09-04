# EchoCore: FPGAs, Wireless Signals, and Ultrasound Made Simple

When you hear the word **FPGA**, it probably sounds like something straight out of a graduate-level electronics course: complicated, intimidating, and not for beginners. But here’s the thing, once you get past the initial fear of learning something new, FPGAs are not only fascinating, they’re also one of the most exciting tools in modern technology. In this blog, I’ll walk you through what an FPGA is, why it matters, and how our project **EchoCore** combines wireless communication and ultrasound imaging on a single chip.

---

## So Well - What is an FPGA?

Let’s start at the very beginning.

**FPGA** stands for **Field-Programmable Gate Array**. That’s a mouthful, but think of it like this: an FPGA is basically a giant box of **LEGO blocks for electronics**. Instead of being a fixed, pre-made toy (say, a toy car that always stays a car), your LEGO set can be rearranged endlessly. One day it’s a castle, the next it’s a spaceship.

* A CPU (your computer’s processor) is like a **single very fast chef** cooking one dish at a time.
* An FPGA is like a **kitchen full of chefs**, each working on different dishes at the same time.

This ability to perform many tasks **in parallel** makes FPGAs perfect for things like:

* **Real-time ultrasound imaging** (where delays aren’t acceptable).
* **Wireless communication** (where lots of data must be sent fast and efficiently).

---

## Well Why Not Just Use a CPU or GPU?

Good question. CPUs and GPUs are great at what they do, but they work sequentially (or with limited parallelism). They’re general-purpose machines. FPGAs, on the other hand:

* Run **true parallel operations**.
* Are **reprogrammable** (unlike custom silicon chips called ASICs).
* Can be highly **power-efficient**.

In short, you can design your FPGA to do *exactly* what you need, and it’ll do it fast.
And keeping up with the LEGO analogy, you can use its blocks to create absolutely anything your mind can conjure up - and fast.

---
## What is an HDL? 

**HDL** stands for **Hardware Description Language**. It's a specialized language used to describe the structure and behavior of digital hardware, such as the circuits inside an **FPGA**. Think of it as a manual that details how each LEGO brick is joined together to build a complex structure.

### Comparing HDLs to Programming 

For those who know programming, think of it this way:

* **HDL (the category)** is like a broad programming style, like "Object-Oriented Programming" itself.
* **Verilog, VHDL, and SystemVerilog (the specific languages)** are like specific languages within that style, such as **Java** or **Python**.
* An **HDL module** is similar to a **function** or **method**—a block of code that performs a specific task.
* The **top module** is like the `main()` function, connecting all the other modules to create the complete system.
---

## The EchoCore Project: Two Worlds on One Chip

Now, here’s where things get really interesting. Our project, **EchoCore**, explores FPGA parallelism by running two completely different systems on the **same FPGA chip**:

### 1. Wireless Communication with 16-QAM

If you’ve used WiFi or 4G, you’ve come across **QAM** (Quadrature Amplitude Modulation). It’s a way of squeezing more information into a radio wave.

* **16-QAM** means each symbol in the signal carries **4 bits** of information.
* Think of it like this: a simple on-and-off signal (like a flashlight) can only send 1 bit (on or off). With 16-QAM, we use a combination of four different amplitudes (brightness levels) and four different phases (positions in a wave cycle) to create 16 unique combinations (4×4=16), with each combination representing a unique 4-bit number.  This allows us to transmit much more data with each signal **pulse**.
* The result? Faster and more efficient wireless data transfer.
* In EchoCore, this helps send ultrasound images wirelessly to an external display (like a laptop or tablet).

Think of it like packing your suitcase: QAM is the clever folding technique that lets you fit more clothes into the same space

### 2. Ultrasound Point-of-Care (POC) Imaging

Ultrasound machines are usually big, expensive, and stuck in hospitals. We wanted to shrink that into something smaller, cheaper, and portable.

An ultrasound system has a signal chain that looks like this:

* **Front-End:** Pulsers, multiplexers, ADCs → capture echoes from the body.
* **Mid-Stage:** Filters, time-gain compensation → clean up the signals.
* **Back-End:** Demodulation, compression, scan conversion → turn signals into an image.

On an FPGA, we can design each of these stages to run **in parallel**, giving us real-time medical imaging.

### Why Combine Them?

Because FPGAs allow us to. The real magic of EchoCore is that the FPGA can:

* **Generate ultrasound images in real time**, and
* **Transmit those images wirelessly at high speed**

… all at the same time, on the same chip. This is parallelism in action. 

---

## For Beginners: How Do You Even Start With FPGAs?

If you’re reading this thinking, “This is cool, but way over my head,” don’t worry. Here’s a roadmap:

### Step 1: Learn the Basics

* **Digital Electronics:** Understand how circuits process 1s and 0s.[Playlist 1](https://www.youtube.com/watch?v=M0mx8S05v60&list=PLBlnK6fEyqRjMH3mWf6kwqiTbT798eAOm),[Playlist 2](https://www.youtube.com/watch?v=BoIOLczVulQ&list=PLyqSpQzTE6M_dZdF7Bd-UncI5_L_1VkXF)
* **Verilog:** The language used to describe FPGA logic.
* Great resources: [ChipVerify](https://www.chipverify.com/), [HDLBits](https://hdlbits.01xz.net/).

### Step 2: Play With Tools

We used **Libero SoC**, which:

* Lets you design using both code and pre-built blocks (called IP cores).
* Has a drag-and-drop environment (SmartDesign) for beginners.

### Step 3: Start Small

* Build an LED blinker (the FPGA version of “Hello World”).
* Try a simple counter or filter.

### Step 4: Experiment With Signal Processing

* Move on to modulation schemes (QPSK, then 16-QAM,beamforming).[Refer this for qam](https://www.controlpaths.com/2022/12/05/implementing-qam16-on-fpga/),[Refer this for beamforming](https://github.com/SAFEERHYDER/FPGA_Ultrasound_DAS_Beamformer)
* Try making small imaging or audio projects.

### Step 5: Dream Big

* Combine multiple systems into one FPGA design, just like EchoCore.

Working with FPGAs feels like unlocking a superpower. Instead of waiting for your CPU to crunch numbers, you design the hardware itself to do exactly what you want.

---

## Why EchoCore Matters

EchoCore is more than just a tech demo:

* **For communications:** It shows how efficient modulation (16-QAM) can live on the same chip as other heavy tasks.
* **For healthcare:** It points toward a future where portable ultrasound devices are accessible and affordable.
* **For engineering:** It’s proof that parallel workloads (even very different ones) can share a single FPGA.

---

## Final Thoughts

The beauty of FPGAs is flexibility. Today, ours is doing wireless QAM + ultrasound. Tomorrow, the same chip could be reprogrammed for something entirely different, like running AI models, encrypting data, or controlling robotics.

For absolute beginners, the message is simple: **don’t be intimidated.** Start with blinking an LED, and who knows? You might just build the next EchoCore.

So next time you hear the term FPGA, don’t picture something scary and inaccessible. Picture a box of LEGO blocks, waiting for you to build your next big idea. 

---
## Acknowledgements and References 
* [Project GitHub](https://github.com/cupx0j0e/EchoCore)
* [Main Reference paper](https://drive.google.com/file/d/1WhMdFHd_UWQ18-SOCPe8W1E1RZc37owy/view?usp=sharing)
* [Cool blogs](https://5usu.github.io/page/USGPORT.html)
---
