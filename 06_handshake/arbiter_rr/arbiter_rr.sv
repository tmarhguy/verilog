module arbiter_rr #(
    parameter CLIENTS = 4
) (
    input  logic               clk,
    input  logic               rst_n,
    input  logic [CLIENTS-1:0] req_i,
    output logic [CLIENTS-1:0] gnt_o,
    
    // Optional: handshake for when the grant is consumed
    input  logic               ack_i 
);

    // TODO: Masked priority encoder approach OR Shift register token approach
    // TODO: Update priority mask after every grant

endmodule
