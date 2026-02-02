module full_adder(
    input logic a, b, c_in,
    output logic sum, carry_out
);

assign sum = a ^ b ^ c_in;
assign carry_out = (a & b) | (c_in & (a ^ b));

endmodule