`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:23:10 04/15/2015
// Design Name:   multiplicador
// Module Name:   C:/Users/Javier/Desktop/LabDigitales/Proyecto1Filtro/test_multiplicador.v
// Project Name:  Proyecto1Filtro
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: multiplicador
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_multiplicador;

	// Inputs
	reg [24:0] a;
	reg [24:0] b;

	// Outputs
	wire [24:0] y;
	wire [49:0] y1;
	wire overflow;

	// Instantiate the Unit Under Test (UUT)
	multiplicador uut (
		.a(a), 
		.b(b), 
		.y(y), 
		.y1(y1),
		.overflow(overflow)
	);

	initial begin
		// Initialize Inputs
		a = 25'sb0_1111_0000_1111_0000_1111_0000;
		b = 25'sb1_1111_1111_1111_1001_1000_0001;

		// Wait 100 ns for global reset to finish
		#100;
    end    
		// Add stimulus here
	initial begin
		#1000 
		a[0]=~a[0];
		b[0]=~b[0];
		#1000 
		a[1]=~a[1];
		b[1]=~b[1];
		#1000 
		a[2]=~a[2];
		b[2]=~b[2];
		#1000 
		a[3]=~a[3];
		b[3]=~b[3];
		#1000 
		a[4]=~a[4];
		b[4]=~b[4];
		#1000 
		a[5]=~a[5];
		b[5]=~b[6];
		#1000 
		a[6]=~a[6];
		b[6]=~b[7];
		#1000 
		a[7]=~a[7];
		b[7]=~b[7];
		#1000
		a[8]=~a[8];
		b[8]=~b[8];
		#1000 
		a[9]=~a[9];
		b[9]=~b[9];
		#1000 
		a[10]=~a[10];
		b[10]=~b[10];
		#1000 
		a[11]=~a[11];
		b[11]=~b[11];

	end
      
endmodule

