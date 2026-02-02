module barrel_shifter #(
    parameter WIDTH = 32
) (
    input  logic [WIDTH-1:0] data_i,
    input  logic [$clog2(WIDTH)-1:0] amt_i, // Shift amount
    input  logic lr_i, // 0 = Left, 1 = Right
    input  logic arith_i, // 1 = Arithmetic (sign extend), 0 = Logical (zero fill)
    output logic [WIDTH-1:0] data_o
);
    // TODO: Implement using case statement or multiple stages of muxes
    // TODO: Handle sign extension for Arithmetic Right Shift
endmodule
