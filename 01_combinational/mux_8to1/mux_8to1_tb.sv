module mux_8to1_tb;

    logic a, b, c, d, e, f, g, h;
    logic [2:0] sel;
    logic y;

    mux_8to1 uut(
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .e(e),
        .f(f),
        .g(g),
        .h(h),
        .sel(sel),
        .y(y)
    );

    initial begin
        $dumpfile("mux_8to1.vcd");
        $dumpvars(0, mux_8to1_tb);

        $display("Time | sel a b c d e f g h| y | Status");
        $display("---------------------------------------");

        for (int i = 0; i < 2 ** 11; i ++) begin
            logic expected;

            {sel, a, b, c, d, e, f, g, h} = i[11:0];
            #10

            if (sel == 3'b000) expected = a;
            else if (sel == 3'b001) expected = b;
            else if (sel == 3'b010) expected = c;
            else if (sel == 3'b011) expected = d;
            else if (sel == 3'b100) expected = e;
            else if (sel == 3'b101) expected = f;
            else if (sel == 3'b110) expected = g;
            else if (sel == 3'b111) expected = h;

            if (y == expected)
                $display("%4t | %b %b %b %b %b %b %b %b %b | %b PASS",  $time, sel, a, b, c, d, e, f, g, h, y);
            else
                $error("%4t | %b %b %b %b %b %b %b %b %b | %b FAIL (Exp: %b)",  $time, sel, a, b, c, d, e, f, g, h, y, expected);        end
        $finish;
    end
endmodule