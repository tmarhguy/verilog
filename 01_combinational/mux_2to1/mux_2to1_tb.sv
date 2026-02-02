`default_nettype none

module mux_2to1_tb;

    logic a, b, sel, y;

    // Instantiate Unit Under Test
    mux_2to1 uut (
        .a(a), .b(b), .sel(sel), .y(y)
    );

    initial begin
        $dumpfile("mux_2to1.vcd");
        $dumpvars(0, mux_2to1_tb);

        $display("Time | sel a b | y | Status");
        $display("-----------------------------");

        for (int i = 0; i < 8; i++) begin
            logic expected;

            {sel, a, b} = i[2:0]; // Apply inputs
            #10;                  // Wait for output

            // Calculate expected value
            if (sel == 0) 
                expected = a;
            else          
                expected = b;

            // Check actual output vs expected
            if (y === expected) begin
                $display("%4t |  %b  %b %b | %b | PASS", $time, sel, a, b, y);
            end else begin
                $error("%4t |  %b  %b %b | %b | FAIL (Expected %b)", $time, sel, a, b, y, expected);
            end
        end
        $finish;
    end

endmodule