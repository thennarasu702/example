module mod_n #(parameter N = 10, parameter WIDTH = 4)(input clk, reset, output reg [WIDTH-1:0] q);
  always @(posedge clk or posedge reset) begin
    if (reset)
      q <= 0;
    else if (q == N-1)
      q <= 0;
    else
      q <= q + 1;
  end
endmodule


