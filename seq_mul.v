module seq_mul(clk, rst, start, a, b, product, done);
  input clk, rst, start;
  input [3:0] a, b;
  output [7:0] product;
  output done;
  reg [7:0] product, multiplicand;
  reg [3:0] multiplier;
  reg [3:0] count;
  reg done, busy;
  always @(posedge clk or posedge rst) begin
    if (rst) begin
      product <= 0;
      multiplicand <= 0;
      multiplier <= 0;
      count <= 0;
      done <= 0;
      busy <= 0;
    end else if (start & ~busy) begin
      product <= 0;
      multiplicand <= a;
      multiplier <= b;
      count <= 4;
      done <= 0;
      busy <= 1;
    end else if (busy) begin
      if (multiplier[0])
        product <= product + multiplicand;
      multiplicand <= multiplicand << 1;
      multiplier <= multiplier >> 1;
      count <= count - 1;
      if (count == 0) begin
        done <= 1;
        busy <= 0;
      end
    end
  end
endmodule


