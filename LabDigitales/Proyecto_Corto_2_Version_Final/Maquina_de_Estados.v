`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:37:28 02/19/2015 
// Design Name: 
// Module Name:    Maquina_de_Estados 
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
module Maquina_de_Estados(rst_i, clk_i,Temp_o,Ing_o,Pres_o,Alarm_o,Elect_o,EA);
input wire rst_i, clk_i,Ing_o,Pres_o; //Entradas: Reset,Reloj,Ignición del vehiculo,presencia niño.
input wire [4:0] Temp_o; //Entrada: Temperatura del automovil con resolución de 8 bits.
output reg Alarm_o,Elect_o; //Salidas: Alarma sonora, Elementos mecánicos como ventilación y/o ventanas.
output reg [3:0] EA;
//reg Alarm_o_o,Elect_o_o;
//output reg status

//FlipFlop_D D(rst_i, clk_i,Alarm_o_o,Alarm_o);
//FlipFlop_D E(rst_i, clk_i,Elect_o_o,Elect_o);


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
//reg [3:0] EA; //SE = Estado Actual.
reg [3:0] SE; //SE = Siguiente Estado.

always @(posedge clk_i,posedge rst_i) begin
	if (rst_i)
		EA <= Estado_0;
	else
		EA <= SE;
end

always @*
begin
Alarm_o = 1'b0;
Elect_o = 1'b0;
	SE = EA;
	case (EA)
		Estado_0: begin
			if (!Ing_o)
				SE=Estado_1;
			else
			begin
				SE=Estado_0;
				Alarm_o = 1'b0;
				Elect_o = 1'b0;
			end
		end
		Estado_1: begin
			if (Pres_o)
				SE=Estado_2;
			else
				SE=Estado_0;
				Alarm_o = 1'b0;
				Elect_o = 1'b0;
		end
		Estado_2: begin
			if (Pres_o)
				if(Temp_o < 5'b10100)
					begin
						Alarm_o=1'b1;
						Elect_o=1'b0;
					end
				else
				SE=Estado_3;
			else
			SE=Estado_1;
		end
		Estado_3: begin
			if (Pres_o)
				if(Temp_o >=5'b10100 || Temp_o== 5'b11111)
					begin
						Alarm_o=1'b1;
						Elect_o=1'b1;
					end
				else
				SE=Estado_2;
			else
			SE=Estado_1;
		end
		default: SE = Estado_0;
	endcase
end

/*always @*
begin
Alarm_o = 1'b0;
Elect_o = 1'b0;
	SE = EA;
	case (EA)
		Estado_0: begin
			if (!Ing_o)
				SE=Estado_1;
			else
			begin
				SE=Estado_0;
				Alarm_o = 1'b0;
				Elect_o = 1'b0;
			end
		end
		Estado_1: begin
			if (Pres_o)
				SE=Estado_2;
			else
			begin
				SE=Estado_0;
				Alarm_o = 1'b0;
				Elect_o = 1'b0;
			end
		end
		Estado_2: begin
			if(Temp_o < 5'b10100)
			begin
			SE=Estado_4;
			end
			else
			SE=Estado_3;
		end
		Estado_3: begin
			if(Temp_o >=5'b10100 || Temp_o== 5'b11111)
			SE=Estado_5;
		end
		Estado_4: begin
			SE=Estado_0;
			Alarm_o=1'b1;
			Elect_o=1'b0;	
		end
		Estado_5: begin
			SE=Estado_0;
			Alarm_o=1'b1;
			Elect_o=1'b1;
		end
		default: SE = Estado_0;
	endcase
end*/

/*always @*
begin
Alarm_o = 1'b0;
Elect_o = 1'b0;
	SE = EA;
	case (EA)
		Estado_0: begin
			if (!Ing_o)
				SE=Estado_1;
			else
			begin
				SE=Estado_0;
				Alarm_o = 1'b0;
				Elect_o = 1'b0;
			end
		end
		Estado_1: begin
			if (Pres_o)
				SE=Estado_2;
			else
			begin
				SE=Estado_0;
				Alarm_o = 1'b0;
				Elect_o = 1'b0;
			end
		end
		Estado_2: begin
			if(Temp_o < 5'b10100 && Temp_o < 5'b11111)
			begin
				SE=Estado_3;
			end
			else 
				if(Temp_o >= 5'b10100 || Temp_o == 5'b11111)
				begin
				SE=Estado_4;
				end
		end
		Estado_3: begin
			SE=Estado_1;
			Alarm_o=1'b1;
			Elect_o=1'b0;	
		end
		Estado_4: begin
			SE=Estado_1;
			Alarm_o=1'b1;
			Elect_o=1'b1;
		end
		default: SE = Estado_0;
	endcase
end*/
	
endmodule
