module pulse_sync (
    input  logic src_clk,
    input  logic src_rst_n,
    input  logic src_pulse_i,

    input  logic dst_clk,
    input  logic dst_rst_n,
    output logic dst_pulse_o
);

    // TODO: Toggle generation in src domain (pulse -> toggle)
    // TODO: 2FF Synchronizer for toggle signal in dst domain
    // TODO: Edge detection (toggle -> pulse) in dst domain

endmodule
