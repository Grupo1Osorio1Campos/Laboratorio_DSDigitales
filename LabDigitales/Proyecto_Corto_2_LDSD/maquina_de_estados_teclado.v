`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:26:17 03/14/2015 
// Design Name: 
// Module Name:    maquina_de_estados_teclado 
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
module maquina_de_estados_teclado(rst_i, clk_i,datotec_o,Q_o,Q1_o,temp_o);
input wire rst_i, clk_i; //Entradas: Reset,Reloj,Ignición del vehiculo,presencia niño.
input wire [7:0] datotec_o; //Entrada: Temperatura del automovil con resolución de 8 bits.
output reg Q_o,Q1_o;
output reg [4:0] temp_o; //Salidas: Alarma sonora, Elementos mecánicos como ventilación y/o ventanas.

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
reg [3:0] EA;
reg [3:0] SE; //SE = Estado Actual.
reg pres_o,ign_o;
reg [4:0] temp_i;
//reg [3:0] SE; //SE = Siguiente Estado.

always @(posedge clk_i,posedge rst_i) begin
	if (rst_i)
		EA <= Estado_0;
	else
		EA <= SE;
end


always @*
begin
	if(datotec_o == 8'b11111110) //se presiona enter para pasar los valores a las salidas
	begin
		Q_o = ign_o;		//salida ignicion
		Q1_o = pres_o;		// salida presencia
		temp_o = temp_i;	// salida de temperatura
		//En = 1'b1;		//enable de la maquina de estados del proyecto anterior
	end
	SE = EA;
	case (EA)
		Estado_0: begin
			if (datotec_o == 8'b10000000) //letra I para iniciar la maquina
				SE=Estado_1;
			else
			begin
				SE=Estado_0;
			end
		end
		Estado_1: begin
			if (datotec_o == 8'b11000001) // letra B para poner activa la ignicion
			begin
				ign_o = 1'b1;
				SE=Estado_2;
			end
			else if (datotec_o == 8'b10110000) //numero 3 para desactivar la ignicion
			begin
				ign_o = 1'b0;
				SE=Estado_2;
			end
			else
				SE=Estado_1;
		end
		Estado_2: begin
			if (datotec_o == 8'b10001000) //letra A activar presencia
			begin
				pres_o = 1'b1;
				SE=Estado_3;
			end
			else if (datotec_o == 8'b10010010) //numero 5 para desactivar la presencia 
			begin
				pres_o = 1'b0;
				SE=Estado_3;
			end
			else
				SE=Estado_2;
		end
		Estado_3: begin
			if (datotec_o == 8'b11000110) //letra C ajustar temperatura
			begin
				temp_i=5 'b11111;
			end
			else if (datotec_o == 8'b10100001) //letra D para temperatura baja
			begin
				temp_i=5 'b00100;
			end
			else
			SE=Estado_3;
		end
		default: SE = Estado_0;
	endcase
end

endmodule
