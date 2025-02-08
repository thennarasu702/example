module johnson_counter(input clk, reset, output reg [4:0] q);
	always @(posedge clk or posedge reset) 
		begin
			if (reset)
				q <= 5'b00000;
			else
				q <= {~q[4], q[4:1]};
		end
	endmodule
