module sync_2ff #(
    parameter WIDTH = 1 // Support vectors logic [WIDTH-1:0]
) (
    input  logic             clk_i,
    input  logic             rst_ni, // Asynchronous reset, active low
    input  logic [WIDTH-1:0] sig_async_i,
    output logic [WIDTH-1:0] sig_synced_o
);

    // TODO: 2 Flip-Flops in series
    // TODO: Use ASYNC_REG attribute (if specific to FPGA vendor)
    // TODO: Handle reset behavior

endmodule
