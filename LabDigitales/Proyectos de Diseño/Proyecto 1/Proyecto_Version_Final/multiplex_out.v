`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:12:25 05/01/2015 
// Design Name: 
// Module Name:    multiplex_out 
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
module multiplex_out #(parameter largo=22)(
	input wire clk_i,rst_i,
	input wire [7:0] sel,
	input wire [largo:0] out1,
	input wire [largo:0] out2,
	input wire [largo:0] out3,
	output wire [largo:0] sal_fil
    );

reg [largo:0] out;

//se reciben tres entradas al oprimir se activaran las salidas la siguiente manera:
//		A = Filtro Altas
//		B = Filtros Bajas
//		M = Filtro Medias		
always @(posedge clk_i)
	begin
		if (rst_i)
		out <= 0;
		else
			case(sel)
				8'h32: //B
					out <= out1;
				8'h3a: //M
					out <= out2;
				8'h1c: //A
					out <= out3;
				default: out <= out1;
			endcase
	end
	
assign sal_fil[largo:0] = out[largo:0];

endmodule
