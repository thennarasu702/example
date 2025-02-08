module tb_clock_gating;
reg clk, enable;
wire gated_clk;
clock_gate dut(.clk(clk), .enable(enable), .gated_clk(gated_clk));
initial 
begin 
clk = 0; 
forever #5 clk = ~clk; 
end
initial 
begin 
enable = 0; 
#20 enable = 1; 
#50 enable = 0; 
#50 $stop; 
end
endmodule
