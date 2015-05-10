`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:52:16 03/08/2015 
// Design Name: 
// Module Name:    Filtro_Desplazamiento 
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
module Filtro_Desplazamiento(clk_i,ps2_clk,caida_pulso);
input wire clk_i,ps2_clk;
output reg caida_pulso;
reg dato_1,dato_2;

always@ (posedge clk_i)
	begin
	dato_2=dato_1;
	dato_1=ps2_clk;
	end
	always@ (posedge clk_i)
		begin
			if(dato_1 && !dato_2)
				caida_pulso = 1'b1;
			else
				caida_pulso = 1'b0;
		end

endmodule
