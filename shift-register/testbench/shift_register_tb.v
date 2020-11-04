`include "../shift_register.v"

module test;
    reg in;
    reg clk;
    wire out;

    shift_register shRe (in, out, clk);

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

        $finish;
    end

    integer i;
    initial begin
      clk = 0;
      for(i=0;i<200;i=i+1) begin
        #1
        clk = ~clk;
      end
    end

endmodule
