module test;

// reg [63 : 0] first = 64'b0000000000000000000000000000000000000000000000000000000000000000;
// reg [63 : 0] second = 64'b0000000000000000000000000000000000000000000000000000000000000000;
reg [7 : 0] first = 8'b00000000;
reg [7 : 0] second = 8'b00000000;

// wire [64 : 0] add_result;
wire [8 : 0] add_result;

wire cout;

  initial begin
    $dumpfile("test.vcd");
    $dumpvars(0,test);

    # 50;
    first = 8'b00000001;
    second = 8'b00000000;

    # 100;
    first = 8'b00000010;
    second = 8'b00010000;

    # 300;
    first = 8'b00011100;
    second = 8'b00001100;

    # 500 $finish;
  end

  nbit_CLA_full_adder adder (first, second, 1'b0, add_result, cout);

  initial
     $monitor("At time %t, result = %h, cout = %b",
              $time, add_result, cout);
endmodule // test
