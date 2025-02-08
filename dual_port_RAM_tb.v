module tb_dual_port_ram;
reg clk, we_a, we_b;
reg [3:0] addr_a, addr_b;
reg [7:0] din_a, din_b;
wire [7:0] dout_a, dout_b;
dual_port_ram dut(.clk(clk), .we_a(we_a), .we_b(we_b), .addr_a(addr_a), .addr_b(addr_b), .din_a(din_a), .din_b(din_b), .dout_a(dout_a), .dout_b(dout_b));
initial 
begin
$dumpfile("dual_port_ram.vcd");
$dumpvars(0, tb_dual_port_ram);
clk = 0; we_a = 0; we_b = 0; addr_a = 0; addr_b = 0; din_a = 0; din_b = 0;
#10 we_a = 1; addr_a = 4'h1; din_a = 8'hA5;
#10 we_a = 0; addr_a = 4'h1;
#10 we_b = 1; addr_b = 4'h2; din_b = 8'h5A;
#10 we_b = 0; addr_b = 4'h2;
#50 $finish;
end
always #5 clk = ~clk;
endmodule
