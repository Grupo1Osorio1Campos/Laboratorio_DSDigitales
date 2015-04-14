`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:04:38 04/13/2015
// Design Name:   unidad_aritmetica
// Module Name:   C:/Users/Javier/Desktop/LabDigitales/Proyecto1Filtro/Prueba_UA.v
// Project Name:  Proyecto1Filtro
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: unidad_aritmetica
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Prueba_UA;

	// Inputs
	reg [24:0] a;
	reg [24:0] b;
	reg [2:0] func;

	// Outputs
	wire [24:0] y;
	wire [49:0] y1;
	wire overflow;

	// Instantiate the Unit Under Test (UUT)
	unidad_aritmetica uut (
		.a(a), 
		.b(b), 
		.func(func), 
		.y(y), 
		.y1(y1), 
		.overflow(overflow)
	);
	
	initial begin
		// Initialize Inputs
		a = 25'sb0_1010_1010_1010_1010_1010_1010;
		b = 25'sb1_0101_0101_0101_0101_0101_0110;
		//func = 3'h0;

		// Wait 100 ns for global reset to finish
		#100;
    end    
		// Add stimulus here
	initial begin
		#1000 func=3'h1;
		#2000 func=3'h2;
		#4000 func=3'h3;

	end
      
endmodule
