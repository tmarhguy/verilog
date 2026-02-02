module async_fifo #(
    parameter DATA_W = 8,
    parameter DEPTH_W = 4 // FIFO depth = 2^DEPTH_W
) (
    // Write Domain
    input  logic              w_clk_i,
    input  logic              w_rst_ni,
    input  logic              w_valid_i,
    input  logic [DATA_W-1:0] w_data_i,
    output logic              w_ready_o,

    // Read Domain
    input  logic              r_clk_i,
    input  logic              r_rst_ni,
    output logic              r_valid_o,
    output logic [DATA_W-1:0] r_data_o,
    input  logic              r_ready_i
);

    // TODO: Memory array (Dual port RAM)
    // TODO: Binary pointers for memory addressing
    // TODO: Gray pointers for CDC crossing
    // TODO: Synchronize Gray pointers to opposite domains (2FF)
    // TODO: Empty/Full flag generation logic using Gray pointers

endmodule
