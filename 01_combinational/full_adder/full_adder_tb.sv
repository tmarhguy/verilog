module full_adder_tb;

    logic a, b, c_in;
    logic sum, carry_out;

    full_adder uut(
        .a(a),
        .b(b),
        .c_in(c_in),
        .sum(sum),
        .carry_out(carry_out)
    );

    initial begin
        $dumpfile("full_adder.vcd");
        $dumpvars(0, full_adder_tb);

        $display("Time | a b c_in | sum carry | Status");
        $display("-------------------------------------");

        for (int i = 0; i < 2 ** 3; i++)begin
            logic sum_expected, carry_expected;

            {a, b, c_in} = i[2:0];

            #10

            sum_expected = a ^ b ^ c_in;
            carry_expected = (a & b) | (c_in & (a ^ b));

            if ((sum_expected === sum) && (carry_out === carry_expected))
                $display("%4t | %b %b %b | %b %b | PASS", $time, a, b, c_in, sum, carry_out);
            else
                $display("%4t | %b %b %b | %b %b | FAIL: Exp: Sum = %b Carry = %b", $time, a, b, c_in, sum, carry_out, sum_expected, carry_expected);

        end
        $finish;
    end
endmodule