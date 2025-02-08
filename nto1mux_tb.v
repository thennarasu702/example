module tb_multiplexer;
  parameter n = 8;
  reg [n-1:0] data;
  reg [2:0] sel;  
  wire y;
  
  multiplexer #(n) uut (.data(data), .sel(sel), .y(y));

  initial begin
    data = 8'b10101010;
    sel = 0;
    #10 sel = 1;
    #10 sel = 2;
    #10 sel = 3;
    #10 sel = 4;
    #10 sel = 5;
    #10 sel = 6;
    #10 sel = 7;
    #10;
    $stop;
  end
endmodule

