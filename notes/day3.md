# Blog Day 3 (0.0.3)

## Keywords
### Basics of Boolean algebra:
- Complement<br>
Represented by the symbol: `'`; the complement of a boolean expression essentially represents the function's inverse.
    ```
    a = 1, b = 0
    a' = 0
    b' = 1
    ```
- AND (.) and OR (+) gates<br>
Along with the NOT gate, the AND and OR gates form the basic foundations of boolean algebra. The AND gate takes two inputs and outputs a high signal iff both inputs are high whereas the OR gate outputs a high signal even if only one of them is high.

- Commutative and Associative Laws:<br>
    ```
    A.B = B.A
    A+B = B+A
    A.(B.C) = (A.B).C
    A+(B+C) = (A+B)+C
    ```

- Distributive Law:<br>
    ```
    A.(B+C) = (A.B) + (A.C)
    A+(B.C) = (A+B).(A+C)
    ```

- De-Morgan's Laws:<br>
    ```
    (A+B)' = A'.B'
    (A.B)' = A'+B'
    ```

### Positive and Negative Logic
The positive and negative logic provide two interpretations to understand binary numbers:
    - Positive Logic
    In positive logic, high signals are interpreted as the logic 1 while low signals are interpreted as logic 0.
    - Negative Logic
    In negative logic, high signals are interpreted as logic 0 while low signals are interpreted as logic 1
Although the interpretations seem different they are somewhat connected. For eg> an AND gate implemented using positive logic is identical to a OR gate implemented using negative logic

### Common numbber systems:
- Binary (Base 2)
- Octal (Base 8)
- Decimal (Base 10)
- Hexadecimal (Base 16)

## Things I accomplished:
- Watched 50 videos from the digital electronics playlist
- Solved all problems from the modules sub-category on HDLbits