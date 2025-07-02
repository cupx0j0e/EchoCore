# Blog Day 8 (0.1.1)

## Keywords:
### Bit slicing in verilog
Verilog, a language similar to C syntactically, does have some differences owing to its HDL nature; the following code is therefore invalid (it is valid in SystemVerilog tho):
```
in[ sel*4+3 : sel*4 ]
```
This is because although vector indices can be variable in verilog, this can only be done if the synthesiser can figure out that the width of the bits being selected is constant and unfortunately the synthesiser is not very good at this.

To achieve the functionality of the mentioned code, one of the following implementations can be implemented:
```
{in[sel*4+3], in[sel*4+2], in[sel*4+1], in[sel*4+0]} (use concatenation)
in[sel*4 +: 4] (select 4 items after the sel*4_th term)
in[sel*4+3 -: 4] (select 4 items before the sel*4+3_th term)
```

### Addition in Verilog
The addition `a+b` in verilog includes the carry-out bit from the final addition operation. The cout bit and sum vector can thus be accessed in the following manner:
```
assign {cout, sum} = a + b + cin;
```  

### Signed addition overflow
Signed addition overflow occurs when adding two signed integers produces a result that exceeds the range representable by the data type. Signed addition overflow occurs ONLY in the following two cases:
- When the addition of two positive numbers yields a negative number and
- When the addition of two negative numbers yields a positive number

Here's an example exhibiting this:
```
# Consider a and b to be 8 bit signed integers
a = +100
b = +50
c = a + b
# (c must be +150 ideally but it is a negative number instead, this is because 150 exceeds the 8-bit positive range of +127 and wraps around the range to become a negative number instead) 
```

## Things I accomplished:
- Completed all the remaining problems from the Combinational logic subcategory on HDLbits which includes:
    - Basic Gates
    - Multiplexers
    - Arithmetic Circuits
    - K-map to circuit