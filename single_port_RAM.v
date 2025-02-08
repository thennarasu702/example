module single_port_ram(clk, we, addr, din, dout);
input clk, we;
input [3:0] addr;
input [7:0] din;
output reg [7:0] dout;
reg [7:0] ram[15:0];
always @(posedge clk) begin
if (we)
ram[addr] <= din;
dout <= ram[addr];
end
endmodule

