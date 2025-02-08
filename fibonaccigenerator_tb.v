module tb_fibonacci;
reg clk, reset;
wire [7:0] fib;
fibonacci_generator dut(.clk(clk), .reset(reset), .fib(fib));
initial 
begin 
clk = 0; 
forever #5 clk = ~clk; 
end
initial 
begin 
reset = 1; 
#10 reset = 0; 
#100 $stop; 
end
endmodule
