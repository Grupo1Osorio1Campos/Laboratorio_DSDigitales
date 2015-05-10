`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:51:19 02/26/2015 
// Design Name: 
// Module Name:    Registro_5bits 
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
module Registro_5bits(rst_i, clk_i,D_i,Q1_o);
input rst_i, clk_i;
input wire [4:0] D_i;
output wire [4:0] Q1_o;
reg [4:0] Q_o;


always @(posedge clk_i or posedge rst_i)
	if (rst_i)
		Q_o <= 5'b00000;
	else 
		if(clk_i)
		Q_o <= D_i;

assign Q1_o = Q_o;

endmodule 
