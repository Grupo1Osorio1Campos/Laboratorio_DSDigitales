`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:25:07 05/18/2015 
// Design Name: 
// Module Name:    ipd_try 
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
module ipd_try #(parameter largo=24, mag=12)(
	input clk_i,rst_i,
	input signed [(mag-1):0] Y_i,
	input signed [largo:0] R,
	output signed [mag:0] IPD
    );

wire signed [largo:0] IPD_1,IPD_2,IPD_3,IPD_4,IPD_5;
wire signed [largo:0] Y_i_i,Y_w,Y_o,I,P,D,E;
wire clk_o;
assign  Y_i_i = {{(largo-mag+1){1'b0}},Y_i};
assign IPD_2 = IPD_1 << 1; //Corrimiento, multiplicación por 2

localparam
//offset=17'sh0007F,
offset=25'sh00007FF,
esc=25'sh4D9;

//CLK
CLK_3 CLKIPD (						
    .clk_i(clk_i), 
    .rst_i(rst_i), 
    .clk_o(clk_o)
    );

//Suma
Suma  #(.largo(largo)) suman128 (		
    .a(Y_i_i), 
    .b(~(offset)), 
    .y2(Y_w)
    );	

//IPD
ipd #(.largo(largo)) IPDServo(
	.clk_i(clk_o),
	.rst_i(rst_i),
	.R(R),
	.Y_i(Y_w),
	.IPD(IPD_1)
    );

//Suma por 128 para ajuste del offset
Suma #(.largo(largo)) sumap128(
    .a(IPD_2), 
    .b(offset),  
    .y2(IPD_3)
    );	
/*
assign IPD_4={IPD_3[largo],IPD_3[(mag-1):0],{(largo-mag){1'b0}}};

//Escalamiento por 1/3.3 para el PWM
multiplicador_pf #(.largo(largo),.mag(12),.pres(12)) escalamiento(
    .a(IPD_4), 
    .b(esc),	 //magnitud 3, precision 22
    .y2(IPD_5)
    );
*/
//assign IPD=IPD_5[(largo-1):mag];
//assign IPD=IPD_3[mag:0];
assign IPD=IPD_3[mag:0];


endmodule

//mag 4 prec 20
//0 0000 0100 1101 1001 0011 0101
//004D935

//mag 12 prec 12
//0 0000 0000 0000 0100 1101 1001
//00004D9

/*
//Escalamiento por 1/3.3 para el PWM
multiplicador #(.largo(largo)) escalamiento(
    .a(IPD_4), 
    .b(esc),	 //magnitud 3, precision 22
    .y2(IPD_5)
    );*/