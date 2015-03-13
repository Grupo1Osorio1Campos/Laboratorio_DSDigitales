`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:02:53 03/03/2015 
// Design Name: 
// Module Name:    Registro_2bits 
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
module Registro_2bits(rst_i, clk_i,D_i,Q_o);
input rst_i, clk_i;
input [1:0] D_i;
output [1:0] Q_o;
reg [1:0] Q_o;

always @(posedge clk_i or posedge rst_i)
	if (rst_i)
		Q_o <= 1'b00;
	else 
		if(clk_i)
		Q_o <= D_i;

endmodule 
