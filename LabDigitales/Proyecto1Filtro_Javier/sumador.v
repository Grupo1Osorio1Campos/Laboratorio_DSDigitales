`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:20:46 04/15/2015 
// Design Name: 
// Module Name:    sumador 
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
module sumador#(parameter largo=11,mag=4,pres=7)(a,b,y,y1,overflow);
input signed [largo:0] a, b;
output reg signed [largo:0] y;
output reg [largo+1:0] y1;
output reg signed overflow;

always @*
begin
	overflow=1'b0;
	y1 = a + b;
	y=y1[largo:0];
	if(y1[largo+1]==1)
		begin
		y={(largo+1){1'b1}};
		overflow=1'b1;
		end
end
endmodule
