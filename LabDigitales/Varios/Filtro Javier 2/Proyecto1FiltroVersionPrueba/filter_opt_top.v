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
module filter_opt_top #(parameter l=22,m=6,p=16) (
	input signed [l:0] data_i,
	input wire clk,
	input wire rst,
	output signed [l:0] data_out
    );

wire signed [l:0] data_out1;


/*CLK clk_reg (
    .clk_i(clk), 
    .rst_i(rst), 
    .clk_o(clk_r)
    );*/
 
filter_1 #(.l(l),.m(m),.p(p)) filter_pa_20(
    .data_i(data_i), 
	 .clk(clk),
    .rst(rst), 
	 .b0(23'sh00FF7C),
	 .b1(23'sh7E0107),
	 .b2(23'sh00FF7C),
	 .a1(23'sh7E0107),
	 .a2(23'sh00FEF9),
    .data_out(data_out1)
    );

filter_1 #(.l(l),.m(m),.p(p)) filter_pb_200(
    .data_i(data_out1), 
	 .clk(clk),
    .rst(rst), 
	 .b0(23'sh00000D),
	 .b1(23'sh00001A),
	 .b2(23'sh00000D),
	 .a1(23'sh7E0A3E),
	 .a2(23'sh00F5E3),
    .data_out(data_out)
    );

endmodule
