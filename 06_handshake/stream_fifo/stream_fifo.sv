module stream_fifo #(
    parameter DATA_W = 32,
    parameter DEPTH  = 8 // FIFO depth, prefer powers of 2 for easy wrapping
) (
    input  logic              clk,
    input  logic              rst_n,
    
    // Write Interface
    input  logic              w_valid_i,
    output logic              w_ready_o,
    input  logic [DATA_W-1:0] w_data_i,
    
    // Read Interface
    output logic              r_valid_o,
    input  logic              r_ready_i,
    output logic [DATA_W-1:0] r_data_o
);

    // TODO: Memory array or register array
    // TODO: Read/Write pointers
    // TODO: Count tracking or pointer comparison for Full/Empty
    // TODO: Skid buffer behavior? (Usually standard FIFO has 1-cycle latency, skid has 0)

endmodule
