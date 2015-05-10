`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:53:23 03/15/2015 
// Design Name: 
// Module Name:    carga_teclado 
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
module carga_teclado(rst_i,clk_i,teclado_i,Ing_o,Pres_o,Temp_o);
input wire rst_i, clk_i; //Entradas: Reset,Reloj,Ignición del vehiculo,presencia niño.
input wire [7:0] teclado_i;
output reg Ing_o,Pres_o; //Salidas: Alarma sonora, Elementos mecánicos como ventilación y/o ventanas.
output reg [4:0] Temp_o;

localparam //indica que las variables no pueden ser cambiadas.
Estado_0 = 4'h0, // Estado 0, ignición = estado 0, !ignición = avanza a estado 1.
Estado_1 = 4'h1, // Estado 1, !presencia = estado 0 y salidas Alarma y Elementos mecánicos en 0 Lógico, presencia = avanza a estado 2.
Estado_2 = 4'h2, // Estado 2, temperatura <30 = estado 4, Temperatura >= 30 = avanza a estado 3.
Estado_3 = 4'h3, // Estado 3, Temperatura >= 30 = salidas Alarma y Elementos mecánicos en 1 Lógico.
Estado_4 = 4'h4, // Estado 4, Temperatura <30 = salidas Alarma en 1 Lógico y Elementos mecánicos en 0 Lógico.
Estado_5 = 4'h5, // Estado 5, Sobrante;
Estado_sobrante_6 = 4'h6, // Estado 6, Sobrante;
Estado_sobrante_7 = 4'h7; // Estado 7, Sobrante;

// Variables tipo registro 
reg [3:0] EA; //EA = Estado Actual.
reg [3:0] SE; //SE = Siguiente Estado.

always @(posedge clk_i,posedge rst_i) begin
	if (rst_i)
		EA <= Estado_0;
	else
		EA <= SE;
end

always @*
begin
Temp_o = 5'b00000;
Ing_o = 1'b0;
Pres_o = 1'b0;
	SE = EA;
	case (EA)
		Estado_0: begin
			if (teclado_i==8'h14)
				if(teclado_i==8'h14)
					SE=Estado_1;
			else
			begin
				SE=Estado_0;
			end
		end
		Estado_1: begin
			if (teclado_i==8'h5a)
				begin
				if(teclado_i==8'h16) //Tecla 1
					Temp_o=5'b00001;
				if(teclado_i==8'h1e) //Tecla 2
					Temp_o=5'b00010;
				if(teclado_i==8'h26) //Tecla 3
					Temp_o=5'b00100;
				if(teclado_i==8'h25) //Tecla 4
					Temp_o=5'b00101;
				if(teclado_i==8'h2e) //Tecla 5
					Temp_o=5'b00111;
				if(teclado_i==8'h36) //Tecla 6
					Temp_o=5'b01000;
				if(teclado_i==8'h3d) //Tecla 7
					Temp_o=5'b01010;
				if(teclado_i==8'h3e) //Tecla 8
					Temp_o=5'b01111;
				if(teclado_i==8'h46) //Tecla 9
					Temp_o=5'b11000;
				if(teclado_i==8'h45) //Tecla 0
					Temp_o=5'b11111;
				else
					Temp_o=5'b00000;
				end
			else
				SE=Estado_2;
		end
		Estado_2: begin
			if (teclado_i==8'h5a)
				begin
				if(teclado_i==8'h43) //Tecla i
					Ing_o=1'b1;
				else
					Ing_o=1'b0;
				end
			else
			SE=Estado_3;
		end
		Estado_3: begin
			if (teclado_i==8'h5a)
				begin
				if(teclado_i==8'h4d) //Tecla p
					Pres_o=1'b1;
				else
					Pres_o=1'b0;
				end
			else
			SE=Estado_0;
		end
		default: SE = Estado_0;
	endcase
end
	
endmodule
