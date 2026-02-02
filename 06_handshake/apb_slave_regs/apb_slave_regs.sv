module apb_slave_regs #(
    parameter ADDR_W = 8,
    parameter DATA_W = 32
) (
    input  logic              pclk,
    input  logic              presetn,
    input  logic [ADDR_W-1:0] paddr,
    input  logic              psel,
    input  logic              penable,
    input  logic              pwrite,
    input  logic [DATA_W-1:0] pwdata,
    
    output logic [DATA_W-1:0] prdata,
    output logic              pready,
    output logic              pslverr
);

    // TODO: Define register map (Control, Status, Scratchpad)
    // TODO: Decode address
    // TODO: Handle Read/Write phases (Setup vs Access)
    // TODO: Assign to internal config signals

endmodule
