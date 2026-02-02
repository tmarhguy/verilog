module skid_buffer #(
    parameter DATA_W = 32
) (
    input  logic              clk,
    input  logic              rst_n,
    
    // Upstream (Source)
    input  logic              valid_i,
    output logic              ready_o,
    input  logic [DATA_W-1:0] data_i,
    
    // Downstream (Sink)
    output logic              valid_o,
    input  logic              ready_i,
    output logic [DATA_W-1:0] data_o
);

    // TODO: Implement state/buffer to decouple input ready from output ready
    // TODO: Case: Empty, Busy, Full

endmodule
