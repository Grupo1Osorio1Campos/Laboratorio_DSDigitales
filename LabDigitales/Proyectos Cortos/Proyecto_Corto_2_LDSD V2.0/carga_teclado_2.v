`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:45:50 03/15/2015 
// Design Name: 
// Module Name:    carga_teclado_2 
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
module carga_teclado_2(clk_i,rst_i,teclado_i,Ing_i,Pres_i,Temp_i);
input wire clk_i,rst_i; //Entradas: Reset,Reloj,Ignición del vehiculo,presencia niño.
input wire [7:0] teclado_i;
output reg Ing_i,Pres_i; //Salidas: Alarma sonora, Elementos mecánicos como ventilación y/o ventanas.
output reg [4:0] Temp_i;

			
always @(posedge clk_i)
	begin
		if (rst_i)
		Ing_i <= 1'b1;
		else
		 case (teclado_i)
			8'h43: 
				Ing_i <= 1'b1;
			8'h31: 
				Ing_i <= 1'b0;
		endcase	
	end

always @(posedge clk_i)
	begin
		if (rst_i)
		Pres_i <= 1'b0;
		else
			case (teclado_i)
				8'h4d: 
					Pres_i <= 1'b1;
				8'h3a: 
					Pres_i <= 1'b0;
			endcase	
	end
	
always @(posedge clk_i)
	begin
		if (rst_i)
		Temp_i <= 5'b00000;
		else
			case (teclado_i)
				8'h45://0
				Temp_i <= 5'b00000; 
				8'h16: //1
					Temp_i <= 5'b00010; 
				8'h1e: //2
					Temp_i <= 5'b00100; 
				8'h26: //3
					Temp_i <= 5'b00101; 
				8'h25: //4
					Temp_i <= 5'b01000; 
				8'h2e: //5
					Temp_i <= 5'b01100; 
				8'h36: //6
					Temp_i <= 5'b01101; 
				8'h3d: //7
					Temp_i <= 5'b11000; 
				8'h3e: //8
					Temp_i <= 5'b11100;
				8'h46: //9
					Temp_i <= 5'b11111;
				endcase	
	end

endmodule
