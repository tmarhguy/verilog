module ram_sp_sync #(
    parameter DATA_W = 32,
    parameter DEPTH  = 256
) (
    input  logic              clk,
    input  logic              wen_i, // Write Enable
    input  logic [$clog2(DEPTH)-1:0] addr_i,
    input  logic [DATA_W-1:0] wdata_i,
    output logic [DATA_W-1:0] rdata_o
);
    // TODO: Declare logic [DATA_W-1:0] mem [0:DEPTH-1]
    // TODO: Check synthesis manual for Read-First vs Write-First inference
endmodule
