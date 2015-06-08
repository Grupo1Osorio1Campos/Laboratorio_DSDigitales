`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:21:50 05/20/2015 
// Design Name: 
// Module Name:    serv_top 
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
module serv_top #(parameter largo=24, mag=12, magp=8)(
	input serv_in,inicio,clk_i,rst_i,
	input [6:0] R,
	output cs_sng,clk_o,
	output [(mag-1):0] adc_out,
	output [3:0] garg,
	output serv_out
    );

//wire [(mag-1):0] adc_out;
wire [largo:0] ipd;
wire [(mag-1):0] IPD1;
wire [mag:0] IPD;
wire [largo:0] ik1,yk1,i;
wire [largo:0] r_n;

assign r_n = {{18{1'b0}},R}; 

adc_top #(.largo(mag)) adc_in (
    .inicio(inicio), 
    .clk_i(clk_i), 
    .rst_i(rst_i), 
    .data_i(serv_in), 
    .cs_sng(cs_sng), 
    .clk_o(clk_o), 
    .garg(garg), 
    .data_o(adc_out)
    );
	 
ipd_try #(.largo(largo)) ipd_op (
    .clk_i(clk_i),
	 .rst_i(rst_i),
	 .R(r_n),
	 .Y_i(adc_out),
	 .IPD(IPD)
	);

CLK_2 clock_pwm (
    .clk_i(clk_i), 
    .rst_i(rst_i), 
    .clk_o(clk_r)
    );	 

PWM #(.magp(magp)) PWM (
    .clk_i(clk_r), 
    .rst_i(rst_i), 
    .vin_i(IPD[(magp-1):0]), 
    .vout_o(serv_out)
    );
	 
endmodule
