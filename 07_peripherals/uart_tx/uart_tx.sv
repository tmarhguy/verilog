module uart_tx #(
    parameter CLK_FREQ  = 50_000_000,
    parameter BAUD_RATE = 115200
) (
    input  logic       clk,
    input  logic       rst_n,
    
    // User interface
    input  logic       valid_i,
    input  logic [7:0] data_i,
    output logic       ready_o,
    
    // Physical pin
    output logic       tx_o
);

    // TODO: Calculate timer ticks per bit
    // TODO: State machine: IDLE -> START -> DATA(0..7) -> STOP
    // TODO: Shift register for data

endmodule
