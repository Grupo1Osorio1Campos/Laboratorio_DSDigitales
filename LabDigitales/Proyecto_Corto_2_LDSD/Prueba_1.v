`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:50:16 03/08/2015 
// Design Name: 
// Module Name:    Prueba_1 
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
module Prueba_1(clk_i,rst_i,ps2_data,ps2_clk,ps2_clk_o,ps2_data_o,rx_en,clk_o,rx_en_o,rx_listo,anodos_o,Q2_o,Q3_o,Q4_o,data_o_o);
input wire clk_i,rst_i,ps2_data,ps2_clk,rx_en;
output wire clk_o,rx_en_o,data_o_o,rx_listo,ps2_clk_o,ps2_data_o,Q3_o,Q4_o;
output wire [4:0]Q2_o;
output wire [3:0] anodos_o;

wire [4:0] temp_o;
wire En,Q_o,Q1_o;
wire [7:0] codigo_o;
wire [8:0] data_o;
//wire clk_o_o_o;
assign clk_o = clk_o_o;
assign rx_en_o = rx_en;
assign data_o_o = data_o[0];
assign ps2_clk_o = ps2_clk;
assign ps2_data_o = ps2_data;


ps2 A(clk_i,rst_i,ps2_data,ps2_clk,rx_en,rx_listo,data_o);
cnvrsr_k_c B(clk_o_o,rst_i,data_o[8:1],codigo_o,anodos_o);
maquina_de_estados_teclado C(rst_i, clk_i,codigo_o,Q_o,Q1_o,temp_o);
Registro_5bits E(rst_i, clk_i,temp_o,Q2_o);
FlipFlop_D F(rst_i, clk_i,Q_o,Q3_o);
FlipFlop_D G(rst_i, clk_i,Q1_o,Q4_o);
//CLK C(clk_i,rst_i,clk_o_o_o); //100 Hz
CLK_2 D(clk_i,rst_i,clk_o_o); //1kHz
//CLK_3 E(clk_i,rst_i,clk_o_o); //2 Hz
//CLK_4 E(clk_i,rst_i,clk_o_o_o); //25 kHz
endmodule 