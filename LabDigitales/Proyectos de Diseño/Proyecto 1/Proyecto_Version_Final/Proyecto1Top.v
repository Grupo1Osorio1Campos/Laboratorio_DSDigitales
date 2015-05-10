`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:51:17 05/02/2015 
// Design Name: 
// Module Name:    ProyectoTop 
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
module ProyectoTop#(parameter largo=22,mag=8,pres=14)(
	input wire clk_i,rst_i,ps2_data,ps2_clk,rx_en,data_i,inicio,
	output wire cs_sng,clk_oadc,sync_o,clk_odac,data_o,rx_listo,
	output wire [3:0] garg,
	output wire garg2,
	output wire [largo:0] sal_fil
	);
	 
//señales de union entre los modulos	 
wire [largo:0] data_in,data_in1,data_in2;
wire enable,clk_r; 
wire [largo:0] data_fil;
wire [7:0] data_ps2;

// divisor de clock para lso regitros del filtro
CLK_2 clk_R(				
    .clk_i(clk_i), 
    .rst_i(rst_i), 
    .clk_o(clk_r)
    );
	 
//modulo de recepcion de datos del adc
adc_top adc_conv (		
    .inicio(inicio), 
    .clk_i(clk_i), 
    .rst_i(rst_i), 
    .data_i(data_i), 
    .cs_sng(cs_sng), 
    .clk_o(clk_oadc), 
	 .garg(garg),
    .data_o(data_fil) 
    );	
	 
//ecualizador 
FiltroTop #(.largo(largo),.mag(mag),.pres(pres)) Filtros(  	
    .data_i(data_fil),  
    .clk(clk_r), 
    .rst(rst_i), 
    .data_out_1(data_in), 
    .data_out_2(data_in1), 
    .data_out_3(data_in2)
    );

//multiplexor para elegir la salida de cada pasabanda
multiplex_out #(.largo(largo)) outputs (		
    .clk_i(clk_i), 
    .rst_i(rst_i), 
    .sel(data_ps2), 
    .out1(data_in), 
    .out2(data_in1), 
    .out3(data_in2), 
    .sal_fil(sal_fil)
    );
	
//modulo de envio de los datos por medio del dac	
DAC #(.largo(largo),.mag(mag),.pres(pres)) dac_out(	
    .clk_i(clk_i), 
    .rst_i(rst_i), 
    .inicio(inicio), 
    .data_i(sal_fil), 
    .sync_o(sync_o), 
    .clk_sal(clk_odac), 
    .data_o(data_o)
    );

//control del multiplexor mediante el uso de un teclado	 
ps2 con_tec (						
    .clk_i(clk_i), 
    .rst_i(rst_i), 
    .ps2_data(ps2_data), 
    .ps2_clk(ps2_clk), 
    .rx_en(rx_en), 
	 .data_o(data_ps2),
    .rx_listo(rx_listo),
	 .garg(garg2)
    );
	 
endmodule
