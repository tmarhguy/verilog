# 2-to-1 Multiplexer

![Status](https://img.shields.io/badge/status-verified-brightgreen)

Basic selection logic between two inputs using a single select line.

## Files

*   `mux_2to1.sv`: The design module.
*   `mux_2to1_tb.sv`: The testbench module.

## Verification

To run the simulation:

```bash
iverilog -g2012 -o sim.out mux_2to1.sv mux_2to1_tb.sv && ./sim.out
```

### Waveform

![Mux 2to1 Waveform](/media/01_combinational/mux_2to1/mux_2to1.png)
