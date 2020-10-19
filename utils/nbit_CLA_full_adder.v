module nbit_CLA_full_adder (X,Y,initCin,S,Cout);
  parameter BIT_NUMBER = 64;

  input [BIT_NUMBER-1 : 0] X;
  input [BIT_NUMBER-1 : 0] Y;
  input initCin;

  output [BIT_NUMBER : 0] S;
  output Cout;

  wire [BIT_NUMBER : 0] Cins;
  wire [BIT_NUMBER-1 : 0] generates, propagates;
  wire [BIT_NUMBER-1 : 0] sum;

  assign Cins[0] = initCin;
  generate
    for (genvar i=0 ; i<BIT_NUMBER ; i=i+1)
      begin
        assign generates[i] = X[i] & Y[i];
        assign propagates[i] = X[i] ^ Y[i];
        assign Cins[i+1] = generates[i] | propagates[i] & Cins[i];
      end
  endgenerate


  generate
    for (genvar i=0 ; i<BIT_NUMBER ; i=i+1)
      begin
        one_bit_full_adder adder (X[i], Y[i], Cins[i], sum[i], wire o);
      end
  endgenerate


  assign S = {sum, Cins[BIT_NUMBER]};
  assign Cout = Cins[BIT_NUMBER];
endmodule // nbit_full_addeX,Y,cin,s,coutr
