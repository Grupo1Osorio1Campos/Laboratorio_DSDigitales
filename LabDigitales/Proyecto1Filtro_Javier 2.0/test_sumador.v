`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   07:57:08 04/16/2015
// Design Name:   sumador
// Module Name:   C:/Users/Javier/Desktop/LabDigitales/Proyecto1Filtro/test_sumador.v
// Project Name:  Proyecto1Filtro
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sumador
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_sumador;

	// Inputs
	reg [11:0] a;
	reg [11:0] b;

	// Outputs
	wire [11:0] y;
	wire [12:0] y1;
	wire overflow;

	// Instantiate the Unit Under Test (UUT)
	sumador uut (
		.a(a), 
		.b(b), 
		.y(y), 
		.y1(y1),
		.overflow(overflow)
	);

		initial begin
		// Initialize Inputs
		a = 12'sb1111_1111_1111;
		b = 12'sb1111_1111_1111;

		// Wait 100 ns for global reset to finish
		#100;
    end    
		// Add stimulus here
	initial begin
		#1000 
		a[0]=~a[0];
		b[4]=~b[4];
		#1000 
		a[1]=~a[1];
		b[11]=~b[11];
		#1000 
		a[2]=~a[2];
		b[10]=~b[10];
		#1000 
		a[3]=~a[3];
		b[9]=~b[9];
		#1000 
		a[4]=~a[4];
		b[8]=~b[8];
		#1000 
		a[5]=~a[5];
		b[7]=~b[7];
		#1000 
		a[6]=~a[6];
		b[6]=~b[6];
		#1000 
		a[7]=~a[7];
		b[5]=~b[5];
		#1000
		a[8]=~a[8];
		b[3]=~b[3];
		#1000 
		a[9]=~a[9];
		b[2]=~b[2];
		#1000 
		a[10]=~a[10];
		b[1]=~b[1];
		#1000 
		a[11]=~a[11];
		b[0]=~b[0];

	end
      
endmodule

