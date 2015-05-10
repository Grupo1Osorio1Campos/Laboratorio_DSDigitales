`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:25:49 02/23/2015
// Design Name:   Registro_8bits
// Module Name:   C:/Users/Javier/Desktop/LabDigitales/Proyecto_Corto_1_LDSD/Prueba_Registro.v
// Project Name:  Proyecto_Corto_1_LDSD
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Registro_8bits
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Prueba_Registro;

	// Inputs
	reg rst_i;
	reg clk_i;
	reg [7:0] D_i;

	// Outputs
	wire [7:0] Q_o;

	// Instantiate the Unit Under Test (UUT)
	Registro_8bits uut (
		.rst_i(rst_i), 
		.clk_i(clk_i), 
		.D_i(D_i), 
		.Q_o(Q_o)
	);

	initial begin
		// Initialize Inputs
		rst_i = 0;
		clk_i = 0;
		D_i = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	initial forever #100 clk_i = !clk_i;
	initial forever #10 D_i[0] = !D_i[0];
	initial forever #20 D_i[1] = !D_i[1];
	initial forever #40 D_i[2] = !D_i[2];
	initial forever #80 D_i[3] = !D_i[3];
	initial forever #160 D_i[4] = !D_i[4];
	initial forever #320 D_i[5] = !D_i[5];
	initial forever #640 D_i[6] = !D_i[6];
	initial forever #1280 D_i[7] = !D_i[7];
      
endmodule

