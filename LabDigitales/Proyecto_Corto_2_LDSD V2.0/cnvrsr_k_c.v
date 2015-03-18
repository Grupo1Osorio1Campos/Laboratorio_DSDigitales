`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:01:12 03/08/2015 
// Design Name: 
// Module Name:    cnvrsr_k_c 
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
module cnvrsr_k_c(clk_i,rst_i,teclado_i,codigo_o,anodo);
input wire [7:0] teclado_i;
output reg [7:0] codigo_o;
input wire clk_i,rst_i; //if HI display is enabled, else all segments are off
output reg [3:0] anodo;

localparam
Cuenta_0 = 3'b000,
Cuenta_1 = 3'b001,
Cuenta_2 = 3'b010,
Cuenta_3 = 3'b011;
			
reg [3:0] EA;
reg [3:0] SE;
reg [7:0] letra;

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
letra=8'h4E;
	SE = EA;
	case(EA)
		Cuenta_0: begin
			anodo=4'b1110;
			letra=teclado_i;
			SE=Cuenta_1;
		end
		Cuenta_1: begin 
			anodo=4'b1101;
			letra=teclado_i;
			SE=Cuenta_2;
		end
		Cuenta_2: begin 
			anodo=4'b1011;
			letra=teclado_i;
			SE=Cuenta_3;
		end
		Cuenta_3: begin 
			anodo=4'b0111;
			letra=teclado_i;
			SE=Cuenta_0;
		end
		default: letra = 8'h45;
	endcase
end

always @*
begin
	case(letra)
		 8'h45: codigo_o = 8'b11000000;   // 0
       8'h16: codigo_o = 8'b11111001;   // 1
       8'h1e: codigo_o = 8'b10100100;   // 2
       8'h26: codigo_o = 8'b10110000;   // 3
       8'h25: codigo_o = 8'b10011001;   // 4
       8'h2e: codigo_o = 8'b10010010;   // 5
       8'h36: codigo_o = 8'b10000010;   // 6
       8'h3d: codigo_o = 8'b11111000;   // 7
       8'h3e: codigo_o = 8'b10000000;   // 8
       8'h46: codigo_o = 8'b10010000;   // 9

       8'h1c: codigo_o = 8'b10001000;   // A
       8'h32: codigo_o = 8'b11000001;   // B
       8'h21: codigo_o = 8'b11000110;   // C
       8'h23: codigo_o = 8'b10100001;   // D
       8'h24: codigo_o = 8'b10000110;   // E
       8'h2b: codigo_o = 8'b10001110;   // F
       8'h34: codigo_o = 8'b10000000;   // G
       8'h33: codigo_o = 8'b10000000;   // H
       8'h43: codigo_o = 8'b10000000;   // I
       8'h3b: codigo_o = 8'b10000000;   // J
       8'h42: codigo_o = 8'b10000000;   // K
       8'h4b: codigo_o = 8'b10000000;   // L
       8'h3a: codigo_o = 8'b10000000;   // M
       8'h31: codigo_o = 8'b10000000;   // N
       8'h44: codigo_o = 8'b10000000;   // O
       8'h4d: codigo_o = 8'b10000000;   // P
       8'h15: codigo_o = 8'b10000000;   // Q
       8'h2d: codigo_o = 8'b10000000;   // R
       8'h1b: codigo_o = 8'b10000000;   // S
       8'h2c: codigo_o = 8'b10000000;   // T
       8'h3c: codigo_o = 8'b10000000;   // U
       8'h2a: codigo_o = 8'b10000000;   // V
       8'h1d: codigo_o = 8'b10000000;   // W
       8'h22: codigo_o = 8'b10000000;   // X
       8'h35: codigo_o = 8'b10000000;   // Y
       8'h1a: codigo_o = 8'b10000000;   // Z

       8'h0e: codigo_o = 8'b10000000;   // `
       8'h4e: codigo_o = 8'b10000000;   // -
       8'h55: codigo_o = 8'b10000000;   // =
       8'h54: codigo_o = 8'b10000000;   // [
       8'h5b: codigo_o = 8'b10000000;   // ]
       8'h5d: codigo_o = 8'b10000000;   // \
       8'h4c: codigo_o = 8'b10000000;   // ;
       8'h52: codigo_o = 8'b10000000;   // '
       8'h41: codigo_o = 8'b10000000;   // ,
       8'h49: codigo_o = 8'b10000000;   // .
       8'h4a: codigo_o = 8'b10000000;   // /

       8'h29: codigo_o = 8'b10000000;   // (space)
       8'h5a: codigo_o = 8'b10000000;   // (enter, cr)
       8'h66: codigo_o = 8'b10000000;   // (backspace)
       default: codigo_o = 8'b10111111; // *
    endcase

end

endmodule

/*		8'h1C:	codigo_o = 8'b10001000;	//A
		8'h32:	codigo_o = 8'b11000001;	//B
		8'h21:	codigo_o = 8'b11000110;	//C
		8'h23:	codigo_o = 8'b10100001;	//D
		8'h24:	codigo_o = 8'b10000110;	//E
		8'h2B:	codigo_o = 8'b10001110;	//F
		8'h34:	codigo_o = 8'b11000000;	//G
		8'h33:	codigo_o = 8'b11000000;	//H
		8'h43:	codigo_o = 8'b11000000;	//I
		8'h3B:	codigo_o = 8'b11000000;	//J
		8'h42:	codigo_o = 8'b11000000;	//K
		8'h4B:	codigo_o = 8'b11000000;	//L
		8'h3A:	codigo_o = 8'b11000000;	//M
		8'h31:	codigo_o = 8'b11000000;	//N
		8'h44:	codigo_o = 8'b11000000;	//O
		8'h4D:	codigo_o = 8'b11000000;	//P
		8'h15:	codigo_o = 8'b11000000;	//Q
		8'h2D:	codigo_o = 8'b11000000;	//R
		8'h1B:	codigo_o = 8'b11000000;	//S
		8'h2C:	codigo_o = 8'b11000000;	//T
		8'h3C:	codigo_o = 8'b11000000;	//U
		8'h2A:	codigo_o = 8'b11000000;	//V
		8'h1D:	codigo_o = 8'b11000000;	//W
		8'h22:	codigo_o = 8'b11000000;	//X
		8'h35:	codigo_o = 8'b11000000;	//Y
		8'h1A:	codigo_o = 8'b11000000;	//Z
		8'h45:	codigo_o = 8'b11000000;	//0
		8'h16:	codigo_o = 8'b11111001;	//1
		8'h1E:	codigo_o = 8'b10100100;	//2
		8'h26:	codigo_o = 8'b10110000;	//3
		8'h25:	codigo_o = 8'b10011001;	//4
		8'h2E:	codigo_o = 8'b10010010;	//5
		8'h36:	codigo_o = 8'b10000010;	//6
		8'h3D:	codigo_o = 8'b11111000;	//7
		8'h3E:	codigo_o = 8'b10000000;	//8
		8'h46:	codigo_o = 8'b10010000;	//9
		8'h0E:	codigo_o = 8'b11000000;	//`
		8'h4E:	codigo_o = 8'b11110111;	//-
		8'h55:	codigo_o = 8'b11000000;	//=
		8'h5D:	codigo_o = 8'b11000000;	//\
		8'h66:	codigo_o = 8'b11000000;	//BKSP
		8'h29:	codigo_o = 8'b11000000;	//SPACE
		8'h0D:	codigo_o = 8'b11000000;	//TAB
		8'h58:	codigo_o = 8'b11000000;	//CAPS
		8'h12:	codigo_o = 8'b11000000;	//L SHFT
		8'h14:	codigo_o = 8'b11000000;	//L CTRL
		8'h11:	codigo_o = 8'b11000000;	//L ALT
		8'h59:	codigo_o = 8'b11000000;	//R SHFT
		default: codigo_o = 8'b01111111;
		*/
