`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:27:42 03/09/2015 
// Design Name: 
// Module Name:    contador 
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
module contador(clk_i,rst_i,en_i,stop_i,cuenta_o);
input clk_i,rst_i,en_i;
input [3:0] stop_i;
output [3:0] cuenta_o; 
reg [3:0] cuenta_o; 

always @ (posedge clk,posedge rst_i)
begin
	if (rst_i)
		cuenta_o = 4'b0000;
	else
		if(en_i)
			begin
				if (cuenta_o == stop_i)
					cuenta_o = 4'b0000;
				else
					cuenta_o = cuenta_o + 1'b1;
			end
	end
endmodule
