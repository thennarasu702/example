module traffic_light_controller(clk, reset, red, yellow, green);
input clk, reset;
output reg red, yellow, green;
reg [1:0] state, next_state;
parameter RED = 2'b00, GREEN = 2'b01, YELLOW = 2'b10;
always @(posedge clk or posedge reset) 
begin
if (reset)
state <= RED;
else
state <= next_state;
end
always @(*) 
begin
case (state)
RED: next_state = GREEN;
GREEN: next_state = YELLOW;
YELLOW: next_state = RED;
default: next_state = RED;
endcase
end
always @(*) begin
red = 0; 
yellow = 0; 
green = 0;
case (state)
RED: red = 1;
GREEN: green = 1;
YELLOW: yellow = 1;
endcase
end
endmodule

