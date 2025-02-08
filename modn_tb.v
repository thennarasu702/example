module modn_tb;
  parameter N = 10;
  parameter WIDTH = 4; 
  reg clk, reset;
  wire [WIDTH-1:0] q;
  mod_n #(N, WIDTH) uut (.clk(clk), .reset(reset), .q(q));
  initial begin
    clk = 0;
    reset = 1;
    #5 reset = 0;
    #100;
    $stop;
  end
  always #5 clk = ~clk;
endmodule

