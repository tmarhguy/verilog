# Full Adder

![Status](https://img.shields.io/badge/status-verified-brightgreen)

A 1-bit full adder with Carry-In and Carry-Out support.

## Files

*   `full_adder.sv`: The design module.
*   `full_adder_tb.sv`: The testbench module.

## Verification

To run the simulation:

```bash
iverilog -g2012 -o sim.out full_adder.sv full_adder_tb.sv && ./sim.out
```

### Waveform

![Full Adder Waveform](/media/01_combinational/full_adder/full_adder.png)
