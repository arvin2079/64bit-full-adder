module shift_register (clk, shift, in, out);
	input clk, shift;
	input in;
	output out;

  parameter SIZE = 64;

  	reg [SIZE-1:0] sr;

	always@(posedge clk)
	begin
		if (shift == 1'b1)
		begin
			sr[SIZE-1:1] <= sr[SIZE-2:0];
			sr[0] <= in;
		end
	end

	assign out = sr[SIZE-1];

endmodule
