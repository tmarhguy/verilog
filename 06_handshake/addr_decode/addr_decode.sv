module addr_decode #(
    parameter ADDR_W    = 32, 
    parameter N_SLAVES  = 4
) (
    input  logic [ADDR_W-1:0] addr_i,
    
    // Memory Map Configuration (could be parameters or inputs)
    // For simplicity, hardcoded ranges or parameters often used
    
    output logic [N_SLAVES-1:0] sel_o,  // One-hot select
    output logic                err_o   // Address decode error (hole in map)
);

    // TODO: Logic to check address ranges
    // e.g. if (addr >= BASE0 && addr < BASE0 + SIZE0) sel[0] = 1;

endmodule
