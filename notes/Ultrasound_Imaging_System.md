# Notes on "A Single FPGA-Based Portable Ultrasound Imaging System for Point-of-Care Applications"

## Beamforming

- **Definition**: Process of focusing sound waves to create clear ultrasound images by combining signals from multiple parts of the probe.Thus Enhances image clarity by aligning signals from different channels to focus on specific points in the body.
- **Types**:
  - **Dynamic Beamforming**:
  - Adjusts focus for every point in the image, requiring thousands of calculations.
  - High computing power needed, increasing hardware complexity.
- **Pseudo-Dynamic Beamforming**:
  - Simplifies focusing by dividing the image into zones (e.g., 4 zones).
  - Uses the same focus settings within each zone, reducing calculations (e.g., 4 calculations for 4 zones instead of 12 for 12 points).
- **Look-Up Table (LUT)**:
  - Pre-calculates focus settings (delays) and stores them in a table to avoid real-time complex math.

## Extended Aperture (EA) Technique

- **Purpose**: Improves image quality with fewer physical channels.
- **How It Works**:
  - A 16-channel system mimics a 32-channel system.
  - Probe sends sound waves twice along the same line using the center 16 elements.
  - Receives echoes first with the center 16 elements, then with neighboring 16 elements.
  - Combines both sets of signals to achieve 32-channel image quality.
- **Trade-Off**: Doubles image quality but halves frame rate (fewer images per second) due to two scans per line.
- **Benefit**: Enhances lateral resolution (side-to-side sharpness) without additional hardware, keeping costs low.
- **Formulas**:
  - **Beamforming Formula**: Combines signals from each channel with specific delays and weights to focus the image.
  - **Delay Formula**: Calculates travel time of sound waves to and from a point in the body to align signals.
  - **Lateral Resolution**: Measures side-to-side image sharpness; more channels (or EA) improve it.

  
## Ultrasound Scanner Module

- **Key Processes**:
  - **Receive Beamforming**: Combines signals from channels to focus the image.
  - **Mid and Back-End Processing**: Converts raw signals into grayscale (B-mode) ultrasound images.
  - **Transmit Focusing**: Controls how sound waves are sent to focus on a specific spot in the body.


## Mid and Back-End Processing Modules

- **Purpose**: Transforms raw ultrasound signals into a final grayscale (B-mode) image.
- **Mid Processing**:
  - **DC Canceling**: Removes unwanted constant signals (noise) from analog-to-digital converters (ADCs) using a 32-tap filter (a mathematical process to clean signals).
  - **Time-Gain Compensation (TGC)**: Boosts weaker signals from deeper tissues to ensure even image brightness across depths.
  - **Quadrature Demodulation**: Converts signals into a format easier to process using a 640-byte LUT storing pre-calculated sine/cosine values, supporting frequency adjustments (125 kHz to 20 MHz).
- **Back-End B-Mode Processing**:
  - **Envelope Detection**: Extracts the signal outline to highlight tissue boundaries.
  - **Log Compression**: Reduces signal strength range using a 16-kB LUT to fit the image on a screen.
  - **Downsampling**: Reduces data (e.g., from 1024 samples per line) to speed up processing.
  - **Image Enhancement**: Applies filters (e.g., black-hole filter) to improve image clarity.
  - **Zone Blending**: Smooths transitions between focus zones for a seamless image.
- **Scan Conversion**:
  - Converts ultrasound data from polar coordinates (fan-shaped) to rectangular coordinates for screen display using the CORDIC algorithm.
  - Data stored in two synchronous dynamic RAMs (SDRAMs) and sent to the processor for display.
 

## B-Mode (Brightness Mode)

- **Definition**: B-mode, or Brightness Mode, is the standard type of ultrasound image.
-  In B-mode, the image is created by sending sound waves into the body, collecting the echoes, and turning them into a 2D picture
-  where brighter areas represent stronger echoes (like dense tissue or bone) and darker areas represent weaker echoes (like fluid or soft tissue).

## Quadrature Demodulation

- **Definition**: Converts raw ultrasound signals into a simpler baseband format (I and Q components) for easier processing, like filtering noise from a signal.

## Envelope Detection

- **Definition**: Extracts the signal’s amplitude (strength) to show tissue boundaries, forming the basis of the B-mode image’s brightness.

## Log Compression

- **Definition**: Reduces the signal’s dynamic range to fit the screen’s brightness range, ensuring all tissues are visible.
- **Implementation**: Uses a 16-kB LUT with pre-calculated logarithm values for 16-bit input data (multiples of 4, up to 65532) to compress the range quickly.
- **Importance**: Balances bright (strong echoes) and dark (weak echoes) areas for a clear image.

## Integration in the System

- **Process Flow**: Beamforming focuses signals, quadrature demodulation simplifies them, envelope detection extracts amplitudes, and log compression adjusts brightness for B-mode images.
- **Efficiency**: LUTs and pseudo-dynamic beamforming reduce computing needs, enabling a single FPGA to handle all processing for a portable, low-cost system.
