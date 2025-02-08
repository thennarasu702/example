module tb_single_port_ram;
reg clk, we;
reg [3:0] addr;
reg [7:0] din;
wire [7:0] dout;
single_port_ram uut(.clk(clk), .we(we), .addr(addr), .din(din), .dout(dout));
initial begin
$dumpfile("single_port_ram.vcd");
$dumpvars(0, tb_single_port_ram);
clk = 0; we = 0; addr = 0; din = 0;
#10 we = 1; addr = 4'h1; din = 8'hA5;
#10 we = 0; addr = 4'h1;
#50 $finish;
end
always #5 clk = ~clk;  
endmodule

