`include "../shift_register.v"

module test;
    reg in;
    reg shift = 1'b1;
    reg clk;
    reg reset;
    wire out;

    shift_register #(8) shRe (clk, shift, in, out);

    initial
    begin
    $monitor("in: %b, clock: %b, out: %b --- at time %t", in, clk, out, $time);
    $dumpfile("shift_register.vcd");
    $dumpvars(0,test);

        in = 1;
        #1

        in = 1;
        #1

        in = 0;
        #1

        in = 0;
        #1

        in = 1;
        #1

        in = 0;
        #1

        in = 1;
        #1

        in = 1;
        #1

        in = 0;
        #1

        in = 0;
        #1

        in = 1;
        #1

        in = 1;
        #1

        in = 1;
        #1

        in = 1;
        #1

        in = 0;
        #1

        in = 0;
        #1

        in = 0;
        #1

        in = 0;
        #1

        in = 0;
        #1

        in = 1;
        #1

        in = 0;
        #1

        in = 1;
        #1

        in = 1;
        #1

        in = 0;
        #1

        in = 1;
        #1

        in = 1;
        #1

        in = 0;
        #1

        in = 0;
        #1

        in = 1;
        #1

        in = 0;
        #1

        in = 1;
        #1

        in = 1;
        #1

        in = 0;
        #1

        in = 0;
        #1

        in = 1;
        #1

        in = 1;
        #1

        in = 1;
        #1

        in = 1;
        #1

        in = 0;
        #1

        in = 0;
        #1

        in = 0;
        #1

        in = 0;
        #1

        in = 0;
        #1

        in = 1;
        #1

        in = 0;
        #1

        in = 1;
        #1

        in = 1;
        #1

        in = 0;
        #1

        $finish;
    end

    integer i;
    initial begin
      clk = 0;
      forever begin
        #1
        clk = ~clk;
      end
    end

endmodule
