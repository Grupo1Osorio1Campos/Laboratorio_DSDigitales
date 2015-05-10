`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:42:31 04/29/2031 
// Design Name: 
// Module Name:    CLK 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module CLK(
	input clk_i,
	input rst_i,
	output reg clk_o
	);
	
reg [(3-1):0] counter;
always @(posedge clk_i or posedge rst_i)
    begin
      if(rst_i)
       begin
       counter<=3'b0;
       clk_o <= 3'b0;
       end
     else
       if(counter==3'd6) //va convertir un clk de 100mhz a un mhz
         begin
         counter<=3'b0;
         clk_o <= ~clk_o;
         end
      else
       begin
       counter <=counter+1'b1;
       end
   end

endmodule
