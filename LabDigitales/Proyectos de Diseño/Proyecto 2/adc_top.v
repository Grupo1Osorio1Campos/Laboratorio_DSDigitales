`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:15:26 04/09/2015 
// Design Name: 
// Module Name:    adc_top 
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
module adc_top #(parameter largo=11,bits=12)(inicio,clk_i,rst_i,data_i,cs_sng,clk_o,garg,data_o);
	
	input wire inicio;
	input wire clk_i;
	input wire rst_i;
	input wire data_i;
	output wire cs_sng;
	output wire clk_o; 
	output wire [3:0] garg;
	output wire [largo-1:0] data_o;
	
wire clk_n;
wire [11:0] dato_aux;
//wire [11:0] data_var;
wire band;

//divisor de clock para la frecuencia de muestreo	

CLK C (						
    .clk_i(clk_i), 
    .rst_i(rst_i), 
    .clk_o(clk_n)
    );	
	/*
CLK_3 CFT (						
    .clk_i(clk_i), 
    .rst_i(rst_i), 
    .clk_o(clk_p)
    );	*/
	 
//protoclo de recepcion de los datos del pmod del adc	
adc_eq A(				
    .inicio(inicio),
    .clk_adc(clk_n), 
    .data_i(data_i), 
    .cs_o(cs_sng), 
    .data_o(dato_aux), 
    .rst_adc(rst_i), 
    .garg(garg), 
    .band(band)
    );

//registro temporal de cada uno de los datos 
resgister_fil #(.largo(bits)) reg_adc ( 
    .clk(clk_n), 
    .reset(rst_i), 
    .en(band), 
    .entrada(dato_aux), 
    .salida(data_o)
    );	 

assign clk_o = clk_n;	
endmodule
