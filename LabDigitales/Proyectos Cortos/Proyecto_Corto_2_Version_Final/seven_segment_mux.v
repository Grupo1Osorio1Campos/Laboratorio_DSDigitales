`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:17:41 02/26/2015 
// Design Name: 
// Module Name:    seven_segment_mux 
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
module seven_segment_mux(clk_i,rst_i,estado,Alarm_i,Elect_i,SSegm,anodo);
input wire clk_i,rst_i,Alarm_i,Elect_i; //if HI display is enabled, else all segments are off
input wire [3:0] estado;
output reg [7:0] SSegm; //seven segment settings: sets each of the 7 segments to on or off
output reg [3:0] anodo;	
		
localparam
Cuenta_0 = 3'b000,
Cuenta_1 = 3'b001,
Cuenta_2 = 3'b010,
Cuenta_3 = 3'b011;
			
reg [3:0] EA;
reg [3:0] SE;
reg [3:0] letra;

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
		Cuenta_2: begin 
			anodo=4'b1011;
			if (Alarm_i) 
				letra = 4'ha;
			else
				letra = 4'h0;
			SE=Cuenta_3;
		end
		Cuenta_3: begin 
			anodo = 4'b0111;
			if (!Elect_i)
				letra = 4'h0;
			else
				letra = 4'hb;
			SE=Cuenta_0;
		end
		default: letra = 4'h0;
	endcase
end

always@*
begin
	case (letra)
		4'h0: SSegm = 8'b11000000;
		4'h1: SSegm = 8'b11111001;
		4'h2: SSegm = 8'b10100100;
		4'h3: SSegm = 8'b10110000;
		4'h4: SSegm = 8'b10011001;
		4'h5: SSegm = 8'b10010010;
		4'h6: SSegm = 8'b10000010;
		4'h7: SSegm = 8'b11111000;
		4'h8: SSegm = 8'b10000000;
		4'h9: SSegm = 8'b10010000;
		4'ha: SSegm = 8'b10001000;
		4'hb: SSegm = 8'b11000001;
		4'hc: SSegm = 8'b11000110;
		4'hd: SSegm = 8'b10100001;
		4'he: SSegm = 8'b10000110;
		4'hf: SSegm = 8'b10001110;
		default: SSegm = 8'b11000000;
	endcase
end
                                                 
endmodule

/*module seven_segment_mux(clk,rst,sn_d2,sn_d4,sn_d3,line_En2,val_Switch);
input wire clk,rst; //if HI display is enabled, else all segments are off
input wire [3:0] sn_d2;
input wire sn_d4,sn_d3;
output reg [7:0] line_En2; //seven segment settings: sets each of the 7 segments to on or off
output reg [3:0] val_Switch;	
		
localparam N=18,letra_u = 4'b0101;
reg [N-1:0] prst;
wire [N-1:0] sgt;
reg [3:0] d_ms;
reg dot;
	
always @(posedge clk, posedge rst)
	if (rst) 
		prst <= 0;
	else
		prst <= sgt;
	
assign sgt = prst+1; 

always@*
	case(prst[N-1:N-2])
		2'b00: 
			begin 
				val_Switch=4'b1110;
				d_ms=4'he;
			end
		2'b01: 
			begin 
				val_Switch=4'b1101;
				d_ms=sn_d2;
			end
		2'b10: 
			begin 
				val_Switch=4'b1011;
				if (sn_d3 && !sn_d3) 
					d_ms = 4'ha;
				else
					d_ms = 4'h0;
			end
		2'b11: 
			begin 
				val_Switch = 4'b0111;
				if (sn_d4 && sn_d3)
					d_ms = letra_u;
				else
					d_ms=4'h0;
			end
	endcase
	
always@*
begin
	case (d_ms)
		4'h0: line_En2 [6:0] = 7'b1000000;
		4'h1: line_En2 [6:0] = 7'b1111001;
		4'h2: line_En2 [6:0] = 7'b0100100;
		4'h3: line_En2 [6:0] = 7'b0110000;
		4'h4: line_En2 [6:0] = 7'b0011001;
		4'h5: line_En2 [6:0] = 7'b0010010;
		4'h6: line_En2 [6:0] = 7'b0000010;
		4'h7: line_En2 [6:0] = 7'b1111000;
		4'h8: line_En2 [6:0] = 7'b0000000;
		4'h9: line_En2 [6:0] = 7'b0010000;
		4'ha: line_En2 [6:0] = 7'b0001000;
		4'hb: line_En2 [6:0] = 7'b0000011;
		4'hc: line_En2 [6:0] = 7'b1000110;
		4'hd: line_En2 [6:0] = 7'b0100001;
		4'he: line_En2 [6:0] = 7'b0000110;
		4'hf: line_En2 [6:0] = 7'b0001110;
		letra_u : line_En2 [6:0] = 7'b1000001;
		default: line_En2 [6:0] = 7'b1000000;
	endcase
dot = 1;
line_En2[7] = dot;
end
                                                 
endmodule*/