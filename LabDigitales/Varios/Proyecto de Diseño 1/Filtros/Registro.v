`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:42:01 04/29/2015 
// Design Name: 
// Module Name:    Registro 
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
module Registro#(parameter largo = 24)(
	input clk,
	input rst,
	input [largo:0] data_i,
	output reg [largo:0] data_o
    );
	
//reg [largo:0] data_o;
	

always @(posedge clk or posedge rst)
      if (rst) begin
         data_o <= 0;
      end else if (clk) begin
         data_o <= data_i;
      end 
		
endmodule
