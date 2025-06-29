# Day 5 blog (0.0.5)

## Keywords
### Combinational circuits
A combinational circuit is a type of digital logic circuit where the output depends solely on the present combination of inputs.

### Examples of Combinational circuits
- Half-adder<br>
A half adder is a combinational circuit which performs the addition of 2 single bit inputs by outputting a sum and a carry bit.

- Full-adder<br>
A full adder is a combinational circuit which also adds 2 single bit inputs while also providing an additional carry-in bit as an input.

- Carry lookahead adder<br>
It is a combinational circuit which is identical to the full adder in function. However a carry lookahead adder possesses the ability to perform much quicker additions as they predict the state of all the carries before they are calculated. 

- Half-subtractor<br>
A half subtractor is a combinational circuit which performs the subtraction of 2 single bit inputs by outputting a difference and a borrow bit.

- Full-subtractor<br>
A full subtractor is a combinational circuit which also subtracts 2 single bit inputs while also providing an additional borrow-in bit as an input.

- Multiplexer<br>
A multiplexer is a combinational circuit which acts as a data selector. It is typically used to choose a specific input from a series of inputs and is analogous to the if-else statements in high level programming languages. Each multiplexer contains n select-lines, 2^n input lines and a single output line.

    Multiplexers can also be used as half and full adders.

- Demultiplexer<br>
A demutiplexer is a combinational circuit which acts as a data distributor. It is typically used to assign the value of an input to a specific output line. Each demultiplexer consists of n select lines, 2^n output lines and a single input line.

    Demultiplexers can also be used to model half and full subtractors.

- Encoder and Decoders<br>
In digital electronics, encoders and decoders are combinational circuits which are used to convert information from one format to another. They are typically used to convert a number from one number system to another; but can be modelled to mimic adders and subtractors.

### Sequential circuits
A sequential circuit is a type of digital circuit whose output depends not only on the present inputs but also on the past inputs or the circuit's history. Sequential circuits therefore require some kind of memory.

### Examples of sequential circuits
- SR Latch<br>
The set-reset or the SR latch is a sequential circuit which aims to store the state of its inputs;the latch retains its state until explicitly changed by an input. A SR latch is made of either NOR or NAND gates.

- Clock<br>
The clock is a sequential circuit which creates an electronic logic signal which oscillates between a high and a low state at a constant frequency and is used to synchronize digital systems.

- SR flip-flop<br>
A cirucit similar in function to a SR-latch, but uses a clock instead of an enabler as the trigerring device.

## Things I accomplished
- Watched another 50 videos from the digital electronics playlist (at video no. 150 now)