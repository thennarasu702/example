module up_down(clk,reset,up_down,count);
input clk;      
input reset;     
input up_down;  
output reg [3:0]count; 
always @(posedge clk or posedge reset) 
begin
    if (reset) 
	begin
        	count <= 4'b0000; 
    	end 
    else if (up_down) 
	begin
        	count <= count + 1; 
    	end 
    else 
	begin
        	count <= count - 1; 
    	end
end
endmodule