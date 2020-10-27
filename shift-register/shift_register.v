`include "d_flip_flop.v"
module shift_register (in, out, clk);
  input wire in;
  input wire clk;
  output reg out;

  reg f1_out = 0;
  reg f1_out_bar = 1;
  d_flip_flop f1 (in, clk, f1_out, f1_out_bar);

  reg f2_out = 0;
  reg f2_out_bar = 1;
  d_flip_flop f2 (f1_out, clk, f2_out, f2_out_bar);

  reg f3_out = 0;
  reg f3_out_bar = 1;
  d_flip_flop f3 (f2_out, clk, f3_out, f3_out_bar);

  reg f4_out = 0;
  reg f4_out_bar = 1;
  d_flip_flop f4 (f3_out, clk, f4_out, f4_out_bar);

  always @(posedge clk) begin
    out = f4_out;
  end
endmodule // shift_registerin,
