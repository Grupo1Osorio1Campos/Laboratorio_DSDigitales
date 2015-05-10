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
	output signed [largo:0] data_out
    );

wire signed [largo:0] data_out1;

localparam

//pb5000	
a01=23'sh010000,
a11=23'sh7EF70B,
a21=23'sh005E28,
b01=23'sh001549,
b11=23'sh002A92,
b21=23'sh001549,
//pa200	
a00=23'sh010000,
a10=23'sh7E0A3E,
a20=23'sh00F5E3,
b00=23'sh010000,
b10=23'sh7E0000,
b20=23'sh010000;


/*CLK clk_reg (
    .clk_i(clk), 
    .rst_i(rst), 
    .clk_o(clk_r)
    );*/
	 
/*filter_1 #(.largo(largo),.mag(mag),.pres(pres)) filter_pa_20(
    .data_i(data_i), 
	 .clk(clk),
    .rst(rst), 
	 .b0(b00),
	 .b1(b10),
	 .b2(b20),
	 .a1(a10),
	 .a2(a20),
    .data_out(data_out)
    );*/

filter_1 #(.largo(largo),.mag(mag),.pres(pres)) filter_pb_200(
    .data_i(data_i), 
	 .clk(clk),
    .rst(rst), 
	 .b0(b01),
	 .b1(b11),
	 .b2(b21),
	 .a1(a11),
	 .a2(a21),
    .data_out(data_out)
    );

endmodule
