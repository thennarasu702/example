module tb_parity_generator;
reg [3:0] data;
wire parity;
parity_generator dut(.data(data), .parity(parity));
initial 
begin 
data = 4'b0000; 
#10 data = 4'b1010; 
#10 data = 4'b1101; 
#10 data = 4'b0101; 
#10 $stop; 
end
endmodule
