# Blog Day 6 (0.0.6)

## Keywords
### The Generate block
Verilog does not allow for the use of a single instance of a module inside a procedural block like an always block to get around this we make use of the generate block. The block can however cannot contain any ports or parameters. Variables that need to be used inside the generate block must be declared by the keyword: genvar.

### Instance array
As the name suggests, an instance array is an array which contains multiple instances of a module. Like the generate block, this is used to use instances of the array in a for-loop.

### Explaination of my solution of the HDL order problem
My solution implements a 2-cycle approach to the problem; first, 8 reg variables are declared to store all the intermediate values of the operation.

These intermediate terms are:
```
A11 * B11,
A12 * B21,
A11 * B12,
A12 * B22,
A21 * B11,
A22 * B21,
A21 * B12,
A22 * B22
```
Next, 4 intermediate sum variables are declared which are used in the second cycle.

In the first cycle, all variables are alloted their respective values obtained after multiplication (they are also reset if rst is true).

In the second cycle, these variables are added to each other (2 at a time according to the rules of matrix multiplication) to get the respective elements of the resultant matrix.

This approach significantly improves the circuit's time (at the expense of its memory) and is thus used to solve problems where the circuit's speed is of the utmost importance.

## Things I accomplished
- Solved all the problems from the more verilog features and the basic gates sub category.
- Added my solution to the HDL order problem on github. 