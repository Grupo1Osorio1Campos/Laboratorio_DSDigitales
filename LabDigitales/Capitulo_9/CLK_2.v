`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:00:49 03/10/2015 
// Design Name: 
// Module Name:    CLK_2 
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
module CLK_2(CLK_2(clk_i,rst_i,clk_o); 
input clk_i,rst_i;
output reg clk_o;
reg [10:0] counter;

always @(posedge clk_i or posedge rst_i)
    begin
      if(rst_i)
       begin
       counter<=11'd0;
       clk_o <= 1'b0;
       end
     else
       if(counter==11'd1_999) //va convertir un clk de 100mhz a un mhz
         begin
         counter<=11'd0;
         clk_o <= ~clk_o;
         end
      else
       begin
       counter <=counter+1'b1;
       end
   end

endmodule
