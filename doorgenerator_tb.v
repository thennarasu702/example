module tb_door_controller;
reg clk, reset, sensor;
wire door;
door_controller dut(.clk(clk), .reset(reset), .sensor(sensor), .door(door));
initial 
begin 
clk = 0; 
forever #5 clk = ~clk; 
end
initial 
begin 
reset = 1; 
sensor = 0; 
#10 reset = 0; 
#20 sensor = 1; 
#30 sensor = 0; 
#40 $stop; 
end
endmodule
