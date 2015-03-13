`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:49:24 02/19/2015 
// Design Name: 
// Module Name:    Registro_8bits 
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
module Registro_8bits(rst_i, clk_i,D_i,Q_o);
input rst_i, clk_i;
input [7:0] D_i;
output [7:0] Q_o;
reg [7:0] Q_o;

always @(posedge clk_i or posedge rst_i)
	if (rst_i)
		Q_o = 8'b00000000;
	else if(clk_i)
		Q_o = D_i;
	else	
		Q_o = 8'b11111111;

endmodule 