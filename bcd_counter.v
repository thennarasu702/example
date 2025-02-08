module bcd_counter(input clk, reset, output reg [7:0] q);
  always @(posedge clk or posedge reset) begin
    if (reset)
      q <= 8'b00000000;
    else if (q[3:0] == 4'b1001) begin
      q[3:0] <= 4'b0000;
      if (q[7:4] == 4'b1001)
        q[7:4] <= 4'b0000;
      else
        q[7:4] <= q[7:4] + 1;
    end else
      q[3:0] <= q[3:0] + 1;
  end
endmodule

