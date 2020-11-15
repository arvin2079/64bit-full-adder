`include "../shift-register/shift_register.v"
`include "../nbit-CLA-fulladder/nbit_CLA_full_adder.v"

module increment_program_counter (I, clk, reset, sh_reg_out, adder_out);
  input [0:4] I;
  input clk;
  input reset;
  output [3:0] sh_reg_out;
  output [4:0] adder_out;

  wire [0:3] SH_OUT;

  shift_register #(64) shreg(clk, reset,I, SH_OUT);
  nbit_CLA_full_adder #(4) adder(4'b0101, SH_OUT, I);

  always @ ( posedge clk ) begin
    $display("ssssssssS");
    $display(I);
    $display(SH_OUT);
    $display("ssssssssF");
  end

  assign sh_reg_out = SH_OUT;
  assign adder_out = I;
endmodule // increment_program_counter
