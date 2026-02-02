module rom_sync #(
    parameter DATA_W = 32,
    parameter DEPTH  = 256,
    parameter INIT_FILE = "rom_content.hex"
) (
    input  logic              clk,
    input  logic [$clog2(DEPTH)-1:0] addr_i,
    output logic [DATA_W-1:0] rdata_o
);
    // TODO: logic [DATA_W-1:0] rom [0:DEPTH-1]
    // TODO: initial $readmemh(INIT_FILE, rom);
endmodule
