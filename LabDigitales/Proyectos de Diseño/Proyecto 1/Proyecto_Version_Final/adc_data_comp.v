`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    05:34:32 04/28/2015 
// Design Name: 
// Module Name:    adc_data_comp 
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
module adc_data_comp #(parameter largo=22,mag=8,pres=14)(
	input wire [11:0] data_adc,
	output wire [largo:0] data_fil
    );

reg [largo:0] fil_reg;

always@*
begin
//se inicializa el dato en cero, luego se añade en la parte fraccionaria(pres=14) el dato de entrada
//del adc y se completa en con dos ceros 
	fil_reg = 23'b0;
	fil_reg [13:2] = data_adc [11:0];
	fil_reg[1:0] = {2{1'b0}};
end

assign data_fil[largo:0] = fil_reg [largo:0];

endmodule
