`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:21:06 04/09/2015 
// Design Name: 
// Module Name:    seven_seg_adc 
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
module seven_seg_adc( clk_i,rst_i,estado,SSegm,anodo);
	 
	input wire clk_i,rst_i; //if HI display is enabled, else all segments are off
	input wire [11:0] estado;
	output reg [7:0] SSegm; //seven segment settings: sets each of the 7 segments to on or off
	output reg [3:0] anodo;	

localparam
Cuenta_0 = 3'b000,
Cuenta_1 = 3'b001,
Cuenta_2 = 3'b010,
Cuenta_3 = 3'b011;
			
reg [3:0] EA;
reg [3:0] SE;
reg [11:0] letra;

always @(posedge clk_i, posedge rst_i)
begin
	if (rst_i) 
		EA <= Cuenta_0;
	else
		EA <= SE;
end

always@*
begin
anodo=4'b1111;
letra=4'h0;
	SE = EA;
	case(EA)
		Cuenta_0: begin
			anodo=4'b1110;
			letra=4'he;
			SE=Cuenta_1;
		end
		Cuenta_1: begin 
			anodo=4'b1101;
			letra=estado;
			SE=Cuenta_2;
		end
		default: letra = 4'h0;
	endcase
end

always@*
begin
	case (letra)
		11'h0: SSegm = 8'b11000000;
		11'h1: SSegm = 8'b11111001;
		11'h2: SSegm = 8'b10100100;
		11'h3: SSegm = 8'b10110000;
		11'h4: SSegm = 8'b10011001;
		11'h5: SSegm = 8'b10010010;
		11'h6: SSegm = 8'b10000010;
		11'h7: SSegm = 8'b11111000;
		11'h8: SSegm = 8'b10000000;
		11'h9: SSegm = 8'b10010000;
		11'ha: SSegm = 8'b10001000;
		11'hb: SSegm = 8'b11000001;
		11'hc: SSegm = 8'b11000110;
		11'hd: SSegm = 8'b10100001;
		11'he: SSegm = 8'b10000110;
		11'hf: SSegm = 8'b10001110;
		default: SSegm = 8'b11000000;
	endcase
end


endmodule
