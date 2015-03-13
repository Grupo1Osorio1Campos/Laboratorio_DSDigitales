`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:48:13 03/03/2015
// Design Name:   Proyecto_Corto_1
// Module Name:   C:/Users/Javier/Desktop/LabDigitales/Proyecto_Corto_1_LDSD/Prueba_Proyecto1.v
// Project Name:  Proyecto_Corto_1_LDSD
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Proyecto_Corto_1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Prueba_Proyecto1;

	// Inputs
	reg rst_i;
	reg clk_i;
	reg [4:0] Temp_i;
	reg Ing_i;
	reg Pres_i;

	// Outputs
	wire Alarm_o;
	wire Elect_o;
	wire clk_o;
	wire [4:0] Temp_o;
	wire Ing_o;
	wire Pres_o;
	wire [3:0] anodos_o;
	wire [7:0] SSegm_o;

	// Instantiate the Unit Under Test (UUT)
	Proyecto_Corto_1 uut (
		.rst_i(rst_i), 
		.clk_i(clk_i), 
		.Temp_i(Temp_i), 
		.Ing_i(Ing_i), 
		.Pres_i(Pres_i), 
		.Alarm_o(Alarm_o), 
		.Elect_o(Elect_o), 
		.clk_o(clk_o), 
		.Temp_o(Temp_o), 
		.Ing_o(Ing_o), 
		.Pres_o(Pres_o), 
		.anodos_o(anodos_o), 
		.SSegm_o(SSegm_o)
	);

	initial begin
		// Initialize Inputs
		rst_i = 0;
		clk_i = 0;
		Temp_i = 5'b11011;
		Ing_i = 0;
		Pres_i = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
   initial forever #5 clk_i = !clk_i;
	initial forever #10 Pres_i = !Pres_i;
	initial forever #20 Ing_i = !Ing_i;
endmodule

