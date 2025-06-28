# Blog Day 2 (0.0.2)

## Keywords
### Verilog
**Verilog** is a hardware description language or an *HDL* which is used to describe digital systems and circuits in form of code.

Verilog is widely used for design and verification of digital and mixed-signal systems, including both application-specific integrated circuits (ASICs) and field-programmable gate arrays (FPGAs). 

### Levels of abstraction in Verilog
Verilog supports multiple levels of abstraction:
- Architecture Level
- RTL Level
- Schematic Level
- Transistor Level
- Physical Level

### Design Styles
- Top-Down <br>
In this style, a top-level block is first defined along with the identification of sub-modules required to build the top block. Similarly, each of the sub-block is further divided into smaller components, and the process continues until we reach the leaf cell or a stage where it can't be further divided.

- Bottom-Up <br>
In this case, the first task is to identify the available building blocks. Then they are put together and connected in a certain way to build bigger cells and used to piece together the top-level block.

### begin-end Vs fork-join
- begin-end <br>
The begin-end block is a sequential block; i.e. statements are executed in order of their appearence in the block. Thus any time-control statements inside the block are relative to the execution of the previous statement. It is used for step-by-step execution of statements.

- fork-join <br>
The fork-join block is a parallel block; i.e. all statements inside the block are executed simultaneously irrespective of the order they appear in the block. In fork-join blocks, time-control statements are relative to the start of the fork statement. It is therefore used to model concurrent events or activities.

### Types of assignments in Verilog
- Continuous assignments <br>
Performed using the `assign` keyword and is used to continuously assign values to variables of the net data-type. These assignments are always active and continuously monitor the expression on the Right-Hand Side (RHS). Whenever any operand in the RHS expression changes, the RHS is immediately re-evaluated, and the new value is assigned to the Left-Hand Side (LHS).

- Procedural assignments <br>
    - Blocking assignments <br>
    Performed using the `=` operator and is used to sequentially assign values to a variable in a procedural block. As mentioned before, assignments are sequential in nature; i.e. the next assignment is only done when the previous one is completed.

    - Non-blocking assignments <br>
    Performed using the `<=` operator and is used to parallely assign values to variables; unlike blocking assignments where assignments are sequential, here assignments are parallel i.e. all assignments are performed concurrently (simultaneously). 

## Things I accomplished:
- Finished the verilog playlist
- Practised problems up to modules on HDLbits