module priority_encoder #(
    parameter WIDTH = 8
) (
    input  logic [WIDTH-1:0] req_i,
    output logic [$clog2(WIDTH)-1:0] enc_o, // Encoded index of highest priority bit
    output logic valid_o // High if any request is active
);
    // TODO: loop through bits (for loop inside always_comb)
    // TODO: Determine if LSB or MSB has priority
endmodule
