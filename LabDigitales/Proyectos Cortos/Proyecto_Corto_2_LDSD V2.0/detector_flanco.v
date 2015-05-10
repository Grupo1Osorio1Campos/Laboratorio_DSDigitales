`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:18:35 03/09/2015 
// Design Name: 
// Module Name:    detector_flanco 
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
module detector_flanco(clk_i,ps2_clk,flanco);
input wire clk_i,ps2_clk;
output reg flanco;
reg dato_1,dato_2;

always@ (posedge clk_i)
	begin
	dato_2=dato_1;
	dato_1=ps2_clk;
	end
	always@ (posedge clk_i)
		begin
			if(dato_1 && !dato_2)
				flanco = 1'b1;
			else
				flanco = 1'b0;
		end
		
endmodule
