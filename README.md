# 16-bit-ALU-Using-Verilog.
16- bit ALU design using Verilog HDL Supports arithmetic and logic operations with status flags and Simulated and Verified in Vivado.
This project implements a 16-bit Arithmetic Logic Unit (ALU) using Verilog HDL. The ALU performs arithmetic and logical operations and generates status flags used in digital processors and embedded systems.

Features are:
16-bit data processing
Arithmetic and logical operations
Shift operations
Status flag generation
Synthesizable RTL design

Operations Supported

ADD:Adds two operands,
SUB:Subtracts second operand from first,
AND:Bitwise AND,
OR:Bitwise OR,
XOR:Bitwise XOR,
NOT:Bitwise inversion,
SHIFT LEFT:Left bit shift,
SHIFT RIGHT:Right bit shift,
COMPARE:Com pares two operands.

Status Flags Generated 
Carry → Indicates carry/borrow in arithmetic operations
Zero → Set when result equals zero
Overflow → Indicates signed overflow
Negative → Indicates negative result (MSB = 1)


The ALU functionality was verified using a Verilog testbench and waveform simulation in Xilinx Vivado.

Concepts Used are 
Combinational logic design,
Datapath and arithmetic circuits,
Binary arithmetic operations,
Overflow detection,
RTL design and simulation.

Tools Used are Xilinx Vivado Simulator


