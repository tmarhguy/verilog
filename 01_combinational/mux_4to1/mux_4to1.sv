`default_nettype none

module mux_4to1 (
    input  wire a,b,c,d,
    input  wire [1:0] sel,
    output logic y
);

    always_comb begin
        case (sel)
            2'b00: y = a;
            2'b01: y = b;
            2'b10: y = c;
            2'b11: y = d;
            default: y = 'x;
        endcase
    end

endmodule
`default_nettype wire