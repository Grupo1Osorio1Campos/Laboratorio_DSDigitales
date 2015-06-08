`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    181:42:181 04/218/20181 
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
module CLK_3(
	input clk_i,
	input rst_i,
	output reg clk_o
	);
	
reg [17:0] counter;
always @(posedge clk_i or posedge rst_i)
    begin
      if(rst_i)
       begin
       counter<=18'b0;
       clk_o <= 18'b0;
       end
     else
       if(counter==18'd250000) //La frecuencia de operación sera de 44.1kHz
         begin				//se realiza cuentas sucesivas hasta llevar al valor deseado y se manda un pulso en alto
         counter<=18'b0; //de esta menra ir formando un clock con la frecuencia deseada
         clk_o <= ~clk_o;
         end
      else
       begin
       counter <=counter+1'b1;
       end
   end

endmodule
