module por_counter #(
    parameter DELAY_CYCLES = 16
) (
    input  logic clk,
    input  logic rst_n_async_i, // Raw physical reset
    output logic rst_n_safe_o   // Use this for the rest of the system
);

    // TODO: Implement a saturating counter
    // TODO: Keep output low until counter reaches DELAY_CYCLES
    // TODO: Treat X values safely (defensive coding)

endmodule
