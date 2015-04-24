`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:55:12 04/16/2015 
// Design Name: 
// Module Name:    filter_2_oprt 
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
module filter_2_oprt #(parameter largo = 24) (
	input wire signed [largo:0] data_i,
	input wire signed [largo:0] data_mul_neg_a2,
	input wire signed [largo:0] data_mul_b2,
	input wire clk,
	input wire rst,
	output wire [largo:0] dato_sum_in,data_regfk_2,data_sum_o
    );
	 
reg [largo:0] data_aux,data_aux5,data_aux4;
reg [largo:0] data_aux1,data_aux;
reg [largo:0] data_aux2,data_aux2_reg; 
reg [largo:0] data_aux3,data_aux3_reg;

resgister_fil regis_fk_2 (
    .clk(clk), 
    .rst(rst), 
    .data_i(data_i), 
    .data_o(data_aux)
    );
	 
Multi1 Multi_a1 (
    .a(data_i), 
    .b(cons_neg_a1),  
    .y_sal(data_aux2), 
    );	 

resgister_fil regis_pipe_multi_a1 (
    .clk(clk), 
    .rst(rst), 
    .data_i(data_aux2), 
    .data_o(data_aux2_reg)
    );

Suma1 Suma_in (
    .a(data_aux2_reg), 
    .b(data_mul_neg_a2), 
    .y_sal(data_aux1), 
    );
	 
Multi1 Multi_b1 (
    .a(data_aux), 
    .b(cons_b1),  
    .y_sal(data_aux4), 
    );	 

resgister_fil regis_pipe_multi_a1 (
    .clk(clk), 
    .rst(rst), 
    .data_i(data_aux4), 
    .data_o(data_aux3_reg)
    );	 
	 
Suma1 Suma_yk (
    .a(data_aux3_reg), 
    .b(data_sum_o), 
    .y_sal(data_aux5), 
    );

assign data_sum_in = data_aux1; 
assign data_regfk2 = data_aux;
assign data_sum_o = data_aux5;

endmodule
