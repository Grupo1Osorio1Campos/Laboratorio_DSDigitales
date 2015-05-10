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
module adc_top #(parameter largo=22,mag=8,pres=14,bits=12)(inicio,clk_i,rst_i,data_i,cs_sng,clk_o,garg,data_o);
	
	input wire inicio;
	input wire clk_i;
	input wire rst_i;
	input wire data_i;
	output wire cs_sng;
	output wire clk_o; 
	output wire [3:0] garg;
	output wire [largo:0] data_o;
	
wire clk_n;
wire [11:0] dato_aux;
wire [11:0] data_var;
wire band;
wire [largo:0] a;

//divisor de clock para la frecuencia de muestreo	
CLK C (						
    .clk_i(clk_i), 
    .rst_i(rst_i), 
    .clk_o(clk_n)
    );
	
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
registro_nbits #(.bits(bits)) reg_adc ( 
    .clk(clk_n), 
    .reset(rst_i), 
    .en(band), 
    .entrada(dato_aux), 
    .salida(data_var)
    );	 

//modulo de extensión del dato de 12 bits a 23bits	 
adc_data_comp #(.largo(largo),.mag(mag),.pres(pres)) data_out (
    .data_adc(data_var),
    .data_fil(a)
    );

//restador del offset de la señal 
Suma  #(.largo(largo)) substract_off (		
    .a(a), 
    .b(~(23'b0000000010000000000000)), 
    .y2(data_o)
    );	 
	 
assign clk_o = clk_n;	
endmodule
