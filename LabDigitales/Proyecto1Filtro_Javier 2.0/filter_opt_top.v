`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:41:53 04/16/2015 
// Design Name: 
// Module Name:    filter_opt_top 
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
module filter_opt_top #(parameter largo=22,mag=6,pres=16) (
	input signed [largo:0] data_i,
	input wire clk,
	input wire rst,
	output signed [largo:0] data_outa,data_outb,data_outc
    );

wire signed [largo:0] data_out1,data_out2,data_out3;

/*CLK clk_reg (
    .clk_i(clk), 
    .rst_i(rst), 
    .clk_o(clk_r)
    );*/

//Filtro bandas bajas
filter_pb200 #(.largo(largo),.mag(mag),.pres(pres)) filter_20_200_a(
    .data_i(data_out1), 
	 .clk(clk),
    .rst(rst), 
    .data_out(data_outa)
    );

filter_pa20 #(.largo(largo),.mag(mag),.pres(pres)) filter_20_200_b(
    .data_i(data_i), 
	 .clk(clk),
    .rst(rst), 
    .data_out(data_out1)
    );
	
//Filtro bandas medias
filter_pb5000 #(.largo(largo),.mag(mag),.pres(pres)) filter_200_5000_a(
    .data_i(data_out2), 
	 .clk(clk),
    .rst(rst), 
    .data_out(data_outb)
    );

filter_pa200 #(.largo(largo),.mag(mag),.pres(pres)) filter_200_5000_b(
    .data_i(data_i), 
	 .clk(clk),
    .rst(rst), 
    .data_out(data_out2)
    );

//Filtro bandas altas
filter_pb20000 #(.largo(largo),.mag(mag),.pres(pres)) filter_5000_20000_a(
    .data_i(data_out3), 
	 .clk(clk),
    .rst(rst), 
    .data_out(data_outc)
    );

filter_pa5000 #(.largo(largo),.mag(mag),.pres(pres)) filter_5000_20000_b(
    .data_i(data_i), 
	 .clk(clk),
    .rst(rst), 
    .data_out(data_out3)
    );
endmodule
