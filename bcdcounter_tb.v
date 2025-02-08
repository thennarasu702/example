module tb_bcd_counter;
		reg clk, reset;
		wire [7:0] q;
		bcd_counter dut (.clk(clk), .reset(reset), .q(q));
		initial 
			begin
				clk = 0;
				reset = 1;
				#5 reset = 0;
				#200;
				$stop;
			end
		always #5 clk = ~clk;
	endmodule

