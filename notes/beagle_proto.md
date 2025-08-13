# Protocols used in Beagle-Vfire

## APB
The APB protocol is a low-cost interface, optimized for minimal power consumption and reduced interface complexity. The APB interface is not pipelined and is a simple, synchronous protocol. Every transfer takes at least two cycles to complete.

The APB interface is designed for accessing the programmable control registers of peripheral devices. APB peripherals are typically connected to the main memory system using an APB bridge.

APB transfers are initiated by an APB bridge. APB bridges can also be referred to as a Requester. A peripheral interface responds to requests

### APB Operating States

The APB protocol operates in three distinct states:
| STATE  |DESCRIPTION                                                                         |
|--------|-------------------------------------------------------------------------------------|
| IDLE   | Default state; no transfer in process.                                              |
| SETUP  | Initiated when PSELx (select) is asserted; address and control signals are sampled. |
| ACCESS | Started when PENABLE is asserted; actual read/write transfer occurs.                |

Setup is always one clock cycle, then moves to Access.

If the slave cannot respond immediately, it holds PREADY low and the bus remains in Access until ready.

### Transfer mechanism
Write Transfer (Without Wait States):

* **Setup Cycle**: At the first clock edge, the address (PADDR), data (PWDATA), write control (PWRITE), and select (PSEL) signals are presented.

* **Access Cycle**: On the next clock edge, PENABLE and PREADY are asserted. The data and control signals must remain stable. Transfer completes when PREADY is high.*

Read Transfer:

Follows a similar two-phase cycle. Data is read from the selected slave when PREADY is asserted.

| Signal   | Description                                                                        |
|----------|------------------------------------------------------------------------------------|
| PSELx    | Peripheral select (one per slave), initiates a transfer                            |
| PENABLE  | Indicates Access phase of a transfer                                               |
| PWRITE   | High for write, low for read                                                       |
| PWDATA   | Write data                                                                         |
| PRDATA   | Read data (supplied by slave during read)                                          |
| PSTRB    | Write strobe, indicates which byte lanes are updated (one per 8 bits)              |
| PREADY   | Slave ready for data transfer; can extend Access phase if held low                 |
| PSLVERR  | Indicates a transfer error from the slave                                          |
| PPROT    | Transaction protection (normal, privileged, secure, etc.)                          |

## AXI
The Advanced eXtensible Interface (AXI) is a high-performance, high-frequency bus protocol developed by ARM, and is part of the AMBA (Advanced Microcontroller Bus Architecture) family (like the APB interface). AXI is designed to enable efficient communication between functional blocks within System-on-Chip (SoC) designs, especially in FPGAs and complex microcontroller systems.

### AXI Transaction Phases

AXI transfers occur across five independent channels (for full AXI4):
| Channel           | Role                                                    |
|-------------------|---------------------------------------------------------|
| Write Address     | Carries address and control information for write ops   |
| Write Data        | Transmits actual data to be written                     |
| Write Response    | Communicates write completion status                    |
| Read Address      | Carries address and control information for read ops    |
| Read Data         | Returns requested data and response from read ops       |
