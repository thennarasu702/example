module door_controller(input clk, reset, sensor, output reg door);
reg state;
always @(posedge clk or posedge reset) 
if (reset) 
state <= 0; 
else 
case (state) 
0:if (sensor) 
state <= 1; 
1:if (!sensor) 
state <= 0; 
endcase
always @(state or sensor) 
door = (state == 1);
endmodule
