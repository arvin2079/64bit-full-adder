module nbit_full_adder (X,Y,Cin,S,Cout);
  parameter BIT_NUMBER = 4;

  input [BIT_NUMBER-1 : 0] X;
  input [BIT_NUMBER-1 : 0] Y;
  input Cin;

  output [BIT_NUMBER : 0] S;
  output Cout;
endmodule // nbit_full_addeX,Y,cin,s,coutr
