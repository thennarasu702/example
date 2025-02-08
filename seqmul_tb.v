module seqmul_tb();
  reg clk, rst, start;
  reg [3:0] a, b;
  wire [7:0] product;
  wire done;
  seq_mul dut (.clk(clk), .rst(rst), .start(start), .a(a), .b(b), .product(product), .done(done));
  initial 
begin
    clk = 0;
    rst = 1;
    start = 0;
    #5 rst = 0;
    #5 start = 1;
    a = 4'b0011;  
    b = 4'b0010;  
    #5 start = 0;
    #50;
    $stop;
end
  always #5 clk = ~clk;
endmodule

