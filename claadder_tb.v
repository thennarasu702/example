module tb_cla_adder;
		reg [3:0] a, b;
		reg cin;
		wire [3:0] sum;
		wire cout;
		cla_adder dut (.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));
		initial 
			begin
				a = 4'b1101;  
				b = 4'b1010;  
				cin = 1;
				#10;
				a = 4'b0110;  
				b = 4'b0011;  
				cin = 0;
				#10;
				$stop;
			end
	endmodule
