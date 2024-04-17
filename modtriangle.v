  module modtriangle( 
    
    input wire clk,
    input wire reset,
 
    output reg [7:0] triangle = 8'h00,  
    output reg count_down = 1'b0

 );

always@(posedge clk or posedge reset)

begin
if (count_down == 1'b0)
begin
  if (triangle == 8'b01111111) // check for top of count
  begin
    count_down <= 1'b1;
    triangle <= triangle-1;
  end
  else 
    triangle<=triangle+1; 
end
else 
begin
  if(triangle==8'b00000000) // check for bottom of count
   begin
    count_down <= 1'b0;
    triangle<=triangle+1;
  end
  else 
    triangle <= triangle-1; 
end

end

endmodule	
