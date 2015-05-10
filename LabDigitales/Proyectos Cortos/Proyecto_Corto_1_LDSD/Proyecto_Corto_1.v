`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:15:25 02/26/2015 
// Design Name: 
// Module Name:    Proyecto_Corto_1 
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
module Proyecto_Corto_1(rst_i, clk_i,Temp_i,Ing_i,Pres_i,Alarm_o,Elect_o,clk_o,Temp_o,Ing_o,Pres_o,anodos_o,SSegm_o);

input wire rst_i, clk_i,Ing_i,Pres_i; //Entradas: Reset,Reloj,Ignición del vehiculo,presencia niño.
input wire [4:0] Temp_i; //Entrada: Temperatura del automovil con resolución de 8 bits.
output wire Alarm_o,Elect_o,clk_o,Ing_o,Pres_o; //Salidas: Alarma sonora, Elementos mecánicos como ventilación y/o ventanas.
output wire [4:0] Temp_o;
output wire [3:0] anodos_o;
output wire [7:0] SSegm_o;
wire [3:0] Estado;
wire clk_2_o;
//wire Alarm_o,Elect_o;

Registro_5bits A(rst_i, clk_i,Temp_i,Temp_o);
FlipFlop_D B(rst_i, clk_i,Ing_i,Ing_o);
FlipFlop_D C(rst_i, clk_i,Pres_i,Pres_o);
CLK D(clk_i,rst_i,clk_o); //1 Hz
CLK_2 E(clk_i,rst_i,clk_2_o); //1 kHz
Maquina_de_Estados F(rst_i, clk_o,Temp_o,Ing_o,Pres_o,Alarm_o,Elect_o,Estado);
seven_segment_mux G(clk_2_o,rst_i,Estado,Alarm_o,Elect_o,SSegm_o,anodos_o);

//assign clk_o = clk_i;
endmodule
