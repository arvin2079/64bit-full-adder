module shift_register (clk, reset, in, out);
	input clk, reset;
	input [4:0] in;
	output [3:0] out;

  parameter SIZE = 64;
	integer i;

  reg [SIZE-1:0] ser;

	always@(posedge clk)
	begin
		if(reset == 1'b1) begin
			ser = 0;
		end
		else begin
	    for(i=0 ; i<5 ; i=i+1) begin
				ser[SIZE-1:1] = ser[SIZE-2:0];
				ser[0] = in[4-i];
	    end
		end
	end

	assign out = ser[SIZE-1:SIZE-4];
endmodule




// module shift_register (clk, reset, in, out);
// 	input clk, reset;
// 	input [4:0] in;
// 	output [3:0] out;
//
//   parameter SIZE = 64;
//
//   reg [SIZE-1:0] ser;
//
// 	always@(posedge clk)
// 	begin
// 		if(reset == 1'b1) begin
// 			ser = 0;
// 		end else begin
// 			ser[SIZE-1:5] <= ser[SIZE-6:0];
// 			ser[4:0] <= in;
// 		end
// 	end
//
// 	assign out = ser[SIZE-1:SIZE-4];
// endmodule
