module regfile_2r1w #(
    parameter DATA_W = 32,
    parameter ADDR_W = 5    // 32 registers
) (
    input  logic              clk,
    
    // Read Port 1
    input  logic [ADDR_W-1:0] rs1_addr_i,
    output logic [DATA_W-1:0] rs1_data_o,
    
    // Read Port 2
    input  logic [ADDR_W-1:0] rs2_addr_i,
    output logic [DATA_W-1:0] rs2_data_o,
    
    // Write Port
    input  logic              wen_i,
    input  logic [ADDR_W-1:0] rd_addr_i,
    input  logic [DATA_W-1:0] rd_data_i
);

    // TODO: Declare memory array logic [DATA_W-1:0] rf [0:2**ADDR_W-1]
    // TODO: Implement synchronous write
    // TODO: Implement asynchronous read (or synchronous, depending on spec)
    // TODO: Ensure Register 0 is hardwired to 0 (for RISC-V)

endmodule
