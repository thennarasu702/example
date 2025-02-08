module fibonacci_generator(input clk, reset, output reg [7:0] fib);
reg [7:0] prev1, prev2;
always @(posedge clk or posedge reset) 
if (reset) 
begin 
prev1 <= 8'd0; 
prev2 <= 8'd1; 
fib <= 8'd0; 
end 
else 
begin 
fib <= prev1 + prev2; 
prev1 <= prev2; 
prev2 <= fib; 
end
endmodule
