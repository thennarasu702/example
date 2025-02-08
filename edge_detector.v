module edge_detector(input d,
    input clk,
    input rst,
    output d_rise,
    output d_fall);
    reg d_out;
always@(posedge clk)
begin
if(~rst)
begin
d_out<=1'b0;
end
else
begin
d_out<=d;
end
end
assign d_rise=d&&(d_out^d);
assign d_fall=(~d)&&(d_out^d);
endmodule

