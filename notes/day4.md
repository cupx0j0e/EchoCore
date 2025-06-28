# Blog Day 4 (0.0.4)

## Keywords
### r's Complement and (r-1)'s Complement<br>
In boolean algebra, r's complement and (r-1)'s complement or the radix or diminished radix complement is a mathematical operation used in digital systems.

r's complement is given by the formula:
```
r^n - N
where:
r is the radix or base of the number
n is the no. of digits present in the number
and N is the number itself
```

(r-1)'s complement is given by the formula:
```
r^n - 1 - N
```

The diminshed radix complement is often preferred during calculations of the radix complement as it does not involve the process of borrowing.

```
(r-1)'s complement + 1 = r's complement
```
### 1's compliment and 2's compliment<br>
In boolean algebra, the 1's complement of a number can easily be found by inverting all the digits of the number.
Likewise, 2's compliment of a number can easily be found by adding 1 to the number's 1's complement.

### Negative Data Representation
- Signed Rep.
    - Here the number's MSB determines its positivity or negativity.
    An MSB of 1 indicates a negative number while an MSB of 0 indicates a positive number. The rest of the digits indicate the number's magnitude.
- Complement Rep.
    - Here the additive inverse of the number is determined by taking the complement of the number (1 or 2)'s.<br>

    The concept of complements is therefore useful as it enables us to perform subtraction through addition.

### Unweighted no. codes
They are binary codes where each digit (bit) does not have a specific positional weight or value. Unlike weighted codes where each bit position corresponds to a power of 2, unweighted codes rely on the pattern or sequence of bits to represent information. Examples include Gray code and Excess-3 code.
<br>
Such codes are typically used in areas like error detection and correction.

### Logic Gates
- Basic Gates:
Used for basic logic circuits.
    - NOT
    - AND
    - OR
- Universal Gates:
Can be used to construct any other type of logic.
    - NAND
    - NOR
- Arithematic Gates:
Used in arithematic logic circuits like the half-adder or full-adder. 
    - XOR
    - XNOR

### Combinational vs Sequential circuits
- Combinational circuits
They are circuits in which the output solely relies on the inputs. Examples include half-adders.
- Sequential circuits
They are circuits in which the output depends upon its previous state (o/p's previous state). Examples include counters and clocks.

## Things I accomplished
- Watched another 50 videos from the digital electronics playlist (at video 100 now)
- Solved all the problems in the Procedures subcategory on HDL bits