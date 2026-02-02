# 4-to-1 Multiplexer

![Status](https://img.shields.io/badge/status-verified-brightgreen)

Selection between four inputs using 2 select bits.

## Files

*   `mux_4to1.sv`: The design module.
*   `mux_4to1_tb.sv`: The testbench module.

## Verification

To run the simulation:

```bash
iverilog -g2012 -o sim.out mux_4to1.sv mux_4to1_tb.sv && ./sim.out
```

### Waveform

![Mux 4to1 Waveform](/media/01_combinational/mux_4to1/mux_4to1.png)
