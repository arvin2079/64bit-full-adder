module shift_register (in, out, clk);
  input wire in;
  input wire clk;
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

  d_flip_flop f1 (f1_in, clk, f1_out, f1_out_bar);
  d_flip_flop f2 (f2_in, clk, f2_out, f2_out_bar);
  d_flip_flop f3 (f3_in, clk, f3_out, f3_out_bar);
  d_flip_flop f4 (f4_in, clk, f4_out, f4_out_bar);

  always @(clk) begin
    f1_in = in;
    f2_in = f1_out;
    f3_in = f2_out;
    f4_in = f3_out;
    out = f4_out;
  end

endmodule // shift_registerin,


// flip flop type D
module d_flip_flop(D, clk, Q, Qbar);
    input wire D;
    input wire clk;
    output reg Q;
    output reg Qbar;

    always @(posedge clk) begin
        if(D == 1'b0) begin
          Q = 0;
        end
        else if(D == 1'b1) begin
          Q = 1;
        end
        Qbar = ~Q;
    end
endmodule
