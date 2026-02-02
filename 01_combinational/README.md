# Combinational Logic

[![Language](https://img.shields.io/badge/language-SystemVerilog-blue.svg)](.) [![Type](https://img.shields.io/badge/type-Combinational-orange.svg)](.)

This directory contains implementations of various combinational logic circuits using SystemVerilog. Combinational logic is a type of digital logic which is implemented by boolean circuits, where the output is a pure function of the present input only.

## Modules

| Module | Description |
| :--- | :--- |
| **alu** | Arithmetic Logic Unit. |
| **comparator** | Magnitude comparator. |
| **decoder_3to8** | 3-to-8 line decoder. |
| **encoder_8to3** | 8-to-3 line encoder. |
| **full_adder** | 1-bit full adder with carry. |
| **mux_2to1** | 2-to-1 Multiplexer. |
| **mux_4to1** | 4-to-1 Multiplexer. |
| **mux_8to1** | 8-to-1 Multiplexer. |
| **priority_encoder** | Priority encoder. |

## Usage

Navigate to each subfolder to find specific implementations and testbenches. run commands typically follow:

```bash
iverilog -g2012 -o sim.out <design>.sv <testbench>.sv
./sim.out
```
