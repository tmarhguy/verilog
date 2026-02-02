`default_nettype none

module mux_4to1_tb;

    logic a, b, c, d;
    logic [1:0] sel;
    logic y;

    mux_4to1 uut(
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .sel(sel),
        .y(y)
    );

    initial begin
        $dumpfile("mux_4to1.vcd");
        $dumpvars(0, mux_4to1_tb);

        $display("Time | sel a b c d | y | Status");
        $display("---------------------------------");

        for (int i = 0; i < 2 ** 6; i++) begin
            logic expected;

            {sel, a, b, c , d} = i[5:0];
            #10;

            if (sel == 2'b00) expected = a;
            else if (sel == 2'b01) expected = b;
            else if (sel == 2'b10) expected = c;
            else if (sel == 2'b11) expected = d;

            if ($isunknown(y))
                $error("%4t | %b %b %b %b %b | %b FAIL (Output is unknown)", $time, sel, a, b, c, d, y);
            else if (y == expected)
                $display("%4t | %b %b %b %b %b | %b PASS",  $time, sel, a, b, c, d, y);
            else
                $error("%4t | %b %b %b %b %b | %b FAIL (Exp: %b)",  $time, sel, a, b, c, d, y, expected);

        end
        $finish;
    end

endmodule

`default_nettype wire