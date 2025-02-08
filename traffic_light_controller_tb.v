module tb_traffic_light_controller;
reg clk, reset;
wire red, yellow, green;
traffic_light_controller dut(.clk(clk), .reset(reset), .red(red), .yellow(yellow), .green(green));
initial 
begin
$dumpfile("traffic_light.vcd");
$dumpvars(0, tb_traffic_light_controller);
clk = 0; reset = 1;
#5 reset = 0;
#100 $finish;
end
always #5 clk = ~clk;
endmodule

