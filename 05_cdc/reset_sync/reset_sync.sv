module reset_sync (
    input  logic clk_i,
    input  logic rst_n_async_i, // Button press, rough signal
    output logic rst_n_synced_o // Clean system reset
);

    // TODO: Asynchronously assert, synchronously deassert strategy
    // TODO: Typically 2-FF synchronizer with hardwired '0' input during reset

endmodule
