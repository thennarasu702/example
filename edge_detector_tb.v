module edge_detector_tb();
reg d;
reg clk;
reg rst;
wire d_rise;
wire d_fall;
edge_detector dut(.d(d),
          .clk(clk),
          .rst(rst),
          .d_rise(d_rise),
          .d_fall(d_fall));
always
#5 clk=(~clk);
initial
begin
clk = 0;
rst = 0;
d = 0;
#10 rst = 1;
#10 rst = 0;
#20 d = 1;
#10 d = 0;
#20 d = 1;  
#10 d = 0;
#50;
$finish;
end
initial begin
$monitor("d = %b,d_rise=%b,d_fall=%b",d,d_rise,d_fall);
end
endmodule
