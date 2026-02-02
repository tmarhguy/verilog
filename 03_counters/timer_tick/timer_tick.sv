/*
 * Generates a single-cycle pulse every 'MAX_COUNT' cycles.
 * Used for timebases (e.g., 1ms tick).
 */
module timer_tick #(
    parameter MAX_COUNT = 1000
) (
    input  logic clk,
    input  logic rst_n,
    input  logic enable_i,
    output logic tick_o
);
    // TODO: Counter logic
    // TODO: Pulse generation
endmodule
