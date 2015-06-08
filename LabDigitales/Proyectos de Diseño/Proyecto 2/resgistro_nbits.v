`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:27:16 04/14/2015 
// Design Name: 
// Module Name:    resgister_fil 
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
module registro_nbits #(parameter largo = 24)(
	input clk,
	input rst,
	input [largo:0] data_i,
	output reg [largo:0] data_o
    );
	
//reg [largo:0] data_o;
	
always @(posedge clk, posedge rst)
	if (rst)
		data_o <= 0;
	else if (clk)	
		data_o <= data_i;

endmodule
