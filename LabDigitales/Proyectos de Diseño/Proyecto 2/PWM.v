`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:38:31 05/18/2015 
// Design Name: 
// Module Name:    PWM 
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
module PWM(
input clk_i,rst_i,
input [7:0] vin_i,
output reg vout_o
);

reg [7:0] contador=0;

always @ (posedge clk_i)
begin
	if (rst_i) begin
		vout_o <=0;
		contador <=0;
		end
	else if(contador < vin_i) begin
		vout_o<=1;
		end
	else begin
		vout_o<=0;
		end
	contador <= contador +1;

end
endmodule

