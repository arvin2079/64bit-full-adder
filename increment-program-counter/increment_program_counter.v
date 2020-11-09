`include "../shift-register/shift_register.v"
`include "../nbit-CLA-fulladder/nbit_CLA_full_adder.v"

module increment_program_counter (I, clk, reset);
  input [0:3] I;
  input clk;
  input reset;

  wire [0:3] SH_OUT;

  generate
    for(genvar j=0 ; j<4 ; j=j+1) begin
      shift_register sreg(I[j], clk, reset, SH_OUT[j]);
    end
  endgenerate

  nbit_CLA_full_adder adder(4'b0101, SH_OUT, I);

endmodule // increment_program_
