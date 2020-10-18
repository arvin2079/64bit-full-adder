module full_adder (Cin,x,y,s,Cout);
  input Cin, x, y;
  output s, Cout;

  assign s = x^y^Cin;
  assign Cout = (x&y) | (x^y)&Cin;
endmodule // full_adderCin,x,y,s,Cout
