module multiplexer #(parameter n = 8)(input [n-1:0] data, input [2:0] sel, output y);
  assign y = data[sel];
endmodule


