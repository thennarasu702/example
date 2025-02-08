module tb_ring_johnson_counter;
		reg clk, reset;
		wire [4:0] ring_q, johnson_q;
		ring_counter ring(.clk(clk), .reset(reset), .q(ring_q));
		johnson_counter johnson(.clk(clk), .reset(reset), .q(johnson_q));
		initial 
			begin
				clk = 0;
				reset = 1;
				#5 reset = 0;
				#100;
				$stop;
			end
		always #5 clk = ~clk;
	endmodule
