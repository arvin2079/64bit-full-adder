`include "../../d_flip_flop/d_flip_flop.v"

module shift_register (in, clk, reset, out);
  input wire in;
  input wire clk;
  input wire reset;
  output reg out;

  reg f1_in;
  reg f2_in;
  reg f3_in;
  reg f4_in;

  wire f1_out;
  wire f2_out;
  wire f3_out;
  wire f4_out;

  wire f1_out_bar;
  wire f2_out_bar;
  wire f3_out_bar;
  wire f4_out_bar;

  d_flip_flop f1 (f1_in, clk, reset, f1_out, f1_out_bar);
  d_flip_flop f2 (f2_in, clk, reset, f2_out, f2_out_bar);
  d_flip_flop f3 (f3_in, clk, reset, f3_out, f3_out_bar);
  d_flip_flop f4 (f4_in, clk, reset, f4_out, f4_out_bar);

  always @(clk) begin
    f1_in = in;
    f2_in = f1_out;
    f3_in = f2_out;
    f4_in = f3_out;
    out = f4_out;
  end

endmodule // shift_registerin,
