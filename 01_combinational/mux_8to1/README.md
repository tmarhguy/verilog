# 8-to-1 Multiplexer

![Status](https://img.shields.io/badge/status-verified-brightgreen)

Selection between eight inputs using 3 select bits.

## Files

*   `mux_8to1.sv`: The design module.
*   `mux_8to1_tb.sv`: The testbench module.

## Verification

To run the simulation:

```bash
iverilog -g2012 -o sim.out mux_8to1.sv mux_8to1_tb.sv && ./sim.out
```

### Waveform

![Mux 8to1 Waveform](/media/01_combinational/mux_8to1/mux_8to1.png)
