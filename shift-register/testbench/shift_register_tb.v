`include "../shift_register.v"

module test;
    reg in;
    reg clk;
    reg reset;
    wire out;

    shift_register shRe (in, clk, reset, out);

    initial
    begin
    $monitor("in: %b, clock: %b, reset: %b, out: %b --- at time %t", in, clk, reset, out, $time);
    $dumpfile("shift_register.vcd");
    $dumpvars(0,test);

        in = 1;
        reset = 0;
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
        // reset = 1;
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
        reset = 1;
        #1

        in = 0;
        reset = 1;
        #1

        in = 0;
        reset = 0;
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
