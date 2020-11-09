`include "../increment_program_counter.v"

module test;

  wire [0:3] I;
  reg clk;

  initial begin
    $dumpfile("test.vcd");
    $dumpvars(0,test);
      I =4'b0000;
      reset =0;
      #1000
    $finish;
  end

  increment_program_counter ipc (I, clk, reset);

  initial begin
    $monitor("time %t, I: %b, clk: %b, reset: %b", $time, I, clk, reset);
  end

  integer i;
  initial begin
    clk = 0;
    forever begin
      #1
      clk = ~clk;
    end
  end

endmodule // test
