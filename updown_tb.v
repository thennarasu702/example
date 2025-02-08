module updown_tb();
  reg clk, reset, up_down;
  wire [3:0] count;
  up_down dut (.clk(clk), .reset(reset), .up_down(up_down), .count(count));
  initial begin
    clk = 0;
    reset = 1;
    up_down = 1; 
    #5 reset = 0;
    #50 up_down = 0; 
    #50;
    $stop;
  end
  always #5 clk = ~clk;
endmodule

