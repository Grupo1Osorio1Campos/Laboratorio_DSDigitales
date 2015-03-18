`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:26:01 03/15/2015 
// Design Name: 
// Module Name:    Prueba_2 
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
module Prueba_2(clk_i,rst_i,ps2_data,ps2_clk,rx_en,anodos_o,codigo_o,Ing_o,Pres_o,Alarm_o,Elect_o,Temp_o,data_o_o);
input wire clk_i,rst_i,ps2_data,ps2_clk,rx_en;
output wire Ing_o,Pres_o,Alarm_o,Elect_o,data_o_o;
output wire [3:0] anodos_o;
output wire [7:0] codigo_o;
wire [8:0] data_o;
output wire [4:0] Temp_o;
wire rx_listo;
assign data_o_o = rx_listo & data_o[0];
wire [3:0] Estado;

ps2 A(clk_i,rst_i,ps2_data,ps2_clk,rx_en,rx_listo,data_o);
//cnvrsr_k_c B(clk_o_o,rst_i,data_o[8:1],codigo_o,anodos_o);
CLK_2 C(clk_i,rst_i,clk_o_o); //1kHz
carga_teclado_2 D(clk_i,rst_i,data_o[8:1],Ing_o,Pres_o,Temp_o);
Maquina_de_Estados F(rst_i,clk_o_o,Temp_o,Ing_o,Pres_o,Alarm_o,Elect_o,Estado);
seven_segment_mux E(clk_o_o,rst_i,Estado,Alarm_o,Elect_o,codigo_o,anodos_o);

endmodule 
//CLK_2 C(clk_i,rst_i,clk_o_o); //1kHz
//CLK C(clk_i,rst_i,clk_o_o_o); //100 Hz
//CLK_3 E(clk_i,rst_i,clk_o_o); //2 Hz
//CLK_4 E(clk_i,rst_i,clk_o_o_o); //25 kHz
