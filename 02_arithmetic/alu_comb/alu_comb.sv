module alu_comb #(
    parameter WIDTH = 32
) (
    input  logic [WIDTH-1:0] a_i,
    input  logic [WIDTH-1:0] b_i,
    input  logic [3:0]       op_i, // Operation code (ADD, SUB, AND, OR, XOR, SLL, SRL, SRA, etc.)
    output logic [WIDTH-1:0] y_o,
    output logic             zero_o
);

    // TODO: Define typedef enum for ops (locally or in a package)
    // TODO: Implement switch/case logic for operations
    // TODO: Handle signed vs unsigned differences particularly for shifts and compares

endmodule
