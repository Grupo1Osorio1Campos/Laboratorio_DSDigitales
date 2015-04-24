`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:52:00 04/18/2015 
// Design Name: 
// Module Name:    filter_2_oprt_2 
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
module filter_2_oprt_2#(parameter largo = 24) (
	input  signed [largo:0] data_i,
	input  signed [largo:0] data_mul_neg_a2,
	input  signed [largo:0] data_mul_b2,
	input wire clk,clk_r,
	input wire rst,
	output signed [largo:0] dato_sum_in,
	output signed [largo:0] data_regfk_2,
	output signed [largo:0] data_sum_o
    );
	 
wire signed [largo:0] data_aux4;
wire signed [largo:0] data_aux2,data_aux2_reg; 
wire signed[largo:0] data_aux3,data_aux3_reg;
reg signed [largo:0] a1;
reg signed [largo:0] b1;

always@*	
begin
	b1 = 25'b0000000000000000000011010;
	a1 = -(25'b1111111100000101000111110);
end
	 

resgister_fil regis_fk_2 (
    .clk(clk_r), 
    .rst(rst), 
    .data_i(data_i), 
    .data_o(data_regfk_2)
    );
	 
multiplicador Multi_a1 (
    .a(data_i), 
    .b(a1),  
    .y2(data_aux2) 
    );	 

resgister_fil regis_pipe_multi_a1 (
    .clk(clk), 
    .rst(rst), 
    .data_i(data_aux2), 
    .data_o(data_aux2_reg)
    );

sumador Suma_in (
    .a(data_aux2_reg), 
    .b(data_mul_neg_a2), 
    .y2(dato_sum_in) 
    );
	 
multiplicador Multi_b1 (
    .a(data_i), 
    .b(b1),  
    .y2(data_aux4) 
    );	 

resgister_fil regis_pipe_multi_b1 (
    .clk(clk), 
    .rst(rst), 
    .data_i(data_aux4), 
    .data_o(data_aux3_reg)
    );	 
	 
sumador Suma_yk (
    .a(data_aux3_reg), 
    .b(data_mul_b2), 
    .y2(data_sum_o) 
    );
	 
endmodule