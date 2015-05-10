`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:15:03 04/23/2015 
// Design Name: 
// Module Name:    DAC 
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
module DAC #(parameter largo=22,mag=8,pres=14,largo_sal=11)(
	
	input wire clk_i,rst_i,inicio,
	input wire  [largo:0] data_i,
	output wire sync_o,clk_sal,
	output wire data_o
 );

//señales de unión entre los moduloos
wire clk_o;
wire [11:0] data_var;
assign clk_sal = clk_o;

//divisor de clock del DAC opera a la mimsa frecuencia que el del ADC
CLK C (
    .clk_i(clk_i), 
    .rst_i(rst_i), 
    .clk_o(clk_o)
    );

//modulo de truncacmiento del dac entran 23 bits salen 12 bits
trunc_dac #(.largo(largo),.largo_sal(largo_sal)) data_in (
    .a(data_i), 
    .b(23'b0000000010000000000000), 
    .y2(data_var)
    );	
	 
//protocolo de envio del DAC
dac_sen #(.ext(11)) dac_comn (
	.clk_dac(clk_o),
	.clk_i(clk_i), 
	.rst_i(rst_i), 
	.data_i(data_var), 
	.start(inicio), 
	.sync_o(sync_o), 
	.data_o(data_o)
	);

endmodule

