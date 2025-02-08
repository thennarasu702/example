module clock_gate(input clk, enable, output gated_clk);
reg latch1, latch2;
always @(posedge clk) 
latch1 <= enable;
always @(negedge clk) 
latch2 <= latch1;
assign gated_clk = latch2 & clk;
endmodule
