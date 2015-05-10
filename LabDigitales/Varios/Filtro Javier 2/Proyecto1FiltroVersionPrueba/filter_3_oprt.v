`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:22:50 04/16/2015 
// Design Name: 
// Module Name:    filter_3_oprt 
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
module filter_3_oprt #(parameter largo = 24) (
	input signed [largo:0] data_i,
	input wire clk,
	input wire rst,
	output signed [largo:0] dato_sum_i,
	output signed [largo:0]data_sum_o
    );

wire signed [largo:0] data_aux2;
wire signed [largo:0] data_aux2_reg; 
reg signed [largo:0] a2;
reg signed [largo:0] b2;
wire [largo:0] data_aux3;

always@*	
begin
	b2 = 25'b0000000000000000000001101;
	a2 = -(25'b0000000001111010111100011);
end
	 
multiplicador Multi_a2 (
    .a(data_i), 
    .b(a2),  
    .y2(data_aux2) 
    );	 

resgister_fil regis_pipe_multi_a2 (
    .clk(clk), 
    .rst(rst), 
    .data_i(data_aux2), 
    .data_o(dato_sum_i)
    );

multiplicador Multi_b2 (
    .a(data_i), 
    .b(b2),  
    .y2(data_aux3) 
    );	 

resgister_fil regis_pipe_multi_a1 (
    .clk(clk), 
    .rst(rst), 
    .data_i(data_aux3), 
    .data_o(data_sum_o)
    );	 

endmodule
