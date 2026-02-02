module ram_sdp #(
    parameter DATA_W = 32,
    parameter DEPTH  = 256
) (
    input  logic clk_write, // Can be same or different from clk_read
    input  logic wen_i,
    input  logic [$clog2(DEPTH)-1:0] waddr_i,
    input  logic [DATA_W-1:0] wdata_i,
    
    input  logic clk_read,
    input  logic ren_i, // Optional read enable
    input  logic [$clog2(DEPTH)-1:0] raddr_i,
    output logic [DATA_W-1:0] rdata_o
);
    // TODO: Inferred Block RAM logic
endmodule
