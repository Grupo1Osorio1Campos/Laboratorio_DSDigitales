`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:11:34 03/18/2015
// Design Name:   Proyecto_Corto_2
// Module Name:   C:/Users/Javier/Desktop/LabDigitales/Proyecto_Corto_2_Version_Final/Testbench_Proyecto_C_2.v
// Project Name:  Proyecto_Corto_2_Version_Final
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Proyecto_Corto_2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Testbench_Proyecto_C_2;

	// Inputs
	reg clk_i;
	reg rst_i;
	reg ps2_data;
	reg ps2_clk;
	reg rx_en;

	// Outputs
	wire [3:0] anodos_o;
	wire [7:0] codigo_o;
	wire Ing_o;
	wire Pres_o;
	wire [4:0] Temp_o;
	wire data_o_o;

	// Instantiate the Unit Under Test (UUT)
	Proyecto_Corto_2 uut (
		.clk_i(clk_i), 
		.rst_i(rst_i), 
		.ps2_data(ps2_data), 
		.ps2_clk(ps2_clk), 
		.rx_en(rx_en), 
		.anodos_o(anodos_o), 
		.codigo_o(codigo_o), 
		.Ing_o(Ing_o), 
		.Pres_o(Pres_o), 
		.Temp_o(Temp_o), 
		.data_o_o(data_o_o)
	);

	 initial forever
		#10 clk_i = ~clk_i;
		
		
	initial
		begin
			ps2_clk = 0;
			#2000 forever #2000 ps2_clk = ~ps2_clk;
			end
	
	initial 
		begin
			rx_en = 0;
			ps2_clk = 1;
			clk_i = 0;
			rst_i = 1;
			ps2_data = 1;
			repeat(5) @(posedge clk_i);
			rst_i = 0;
		end
		
	initial
		begin
/////////// Letra I=8'h43
			ps2_data = 1;
			#4000; 
			@(posedge ps2_clk);
			rx_en = 1;
			#4000;
			ps2_data = 0; // incio
			@(posedge ps2_clk);
			ps2_data = 1; // d0
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // d1
			#4000;
			@(posedge ps2_clk);
			ps2_data = 0; // d2
			#4000;
			@(posedge ps2_clk);
			ps2_data = 0; // d3
			#4000;
			@(posedge ps2_clk);
			ps2_data = 0; // d4
			#4000;
			@(posedge ps2_clk);
			ps2_data = 0; // d5
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // d6
			#4000;
			@(posedge ps2_clk);
			ps2_data = 0; // d7
			#4000;
			@(posedge ps2_clk);
			ps2_data = 0; // paridad
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // parada 
			rx_en = 0;
			#4000;
			
			// F0
			rx_en = 1;
			#4000;
			ps2_data = 0; // incio
			@(posedge ps2_clk);
			ps2_data = 0; // d0
			#4000;
			@(posedge ps2_clk);
			ps2_data = 0; // d1
			#4000;
			@(posedge ps2_clk);
			ps2_data = 0; // d2
			#4000;
			@(posedge ps2_clk);
			ps2_data = 0; // d3
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // d4
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // d5
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // d6
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // d7
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // paridad
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // parada 
			rx_en = 0;
			#4000;
			
			// Letra I=8'h43
			rx_en = 1;
			#4000;
			ps2_data = 0; // incio
			@(posedge ps2_clk);
			ps2_data = 1; // d0
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // d1
			#4000;
			@(posedge ps2_clk);
			ps2_data = 0; // d2
			#4000;
			@(posedge ps2_clk);
			ps2_data = 0; // d3
			#4000;
			@(posedge ps2_clk);
			ps2_data = 0; // d4
			#4000;
			@(posedge ps2_clk);
			ps2_data = 0; // d5
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // d6
			#4000;
			@(posedge ps2_clk);
			ps2_data = 0; // d7
			#4000;
			@(posedge ps2_clk);
			ps2_data = 0; // paridad
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // parada 
			rx_en = 0;
			#4000;
						
////////// Letra N=8'h31
			rx_en = 1;
			#4000;
			ps2_data = 0; // incio
			@(posedge ps2_clk);
			ps2_data = 1; // d0
			#4000;
			@(posedge ps2_clk);
			ps2_data = 0; // d1
			#4000;
			@(posedge ps2_clk);
			ps2_data = 0; // d2
			#4000;
			@(posedge ps2_clk);
			ps2_data = 0; // d3
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // d4
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // d5
			#4000;
			@(posedge ps2_clk);
			ps2_data = 0; // d6
			#4000;
			@(posedge ps2_clk);
			ps2_data = 0; // d7
			#4000;
			@(posedge ps2_clk);
			ps2_data = 0; // paridad
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // parada 
			rx_en = 0;
			#4000;
			
			// F0
			rx_en = 1;
			#4000;
			ps2_data = 0; // incio
			@(posedge ps2_clk);
			ps2_data = 0; // d0
			#4000;
			@(posedge ps2_clk);
			ps2_data = 0; // d1
			#4000;
			@(posedge ps2_clk);
			ps2_data = 0; // d2
			#4000;
			@(posedge ps2_clk);
			ps2_data = 0; // d3
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // d4
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // d5
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // d6
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // d7
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // paridad
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // parada 
			rx_en = 0;
			#4000;
			
			// Letra N=8'h31
			rx_en = 1;
			#4000;
			ps2_data = 1; // d0
			#4000;
			@(posedge ps2_clk);
			ps2_data = 0; // d1
			#4000;
			@(posedge ps2_clk);
			ps2_data = 0; // d2
			#4000;
			@(posedge ps2_clk);
			ps2_data = 0; // d3
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // d4
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // d5
			#4000;
			@(posedge ps2_clk);
			ps2_data = 0; // d6
			#4000;
			@(posedge ps2_clk);
			ps2_data = 0; // d7
			#4000;
			@(posedge ps2_clk);
			ps2_data = 0; // paridad
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // parada 
			rx_en = 0;
			#4000;
			
///////// Letra M=8'h3A
			rx_en = 1;
			#4000;
			ps2_data = 0; // incio
			@(posedge ps2_clk);
			ps2_data = 0; // d0
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // d1
			#4000;
			@(posedge ps2_clk);
			ps2_data = 0; // d2
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // d3
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // d4
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // d5
			#4000;
			@(posedge ps2_clk);
			ps2_data = 0; // d6
			#4000;
			@(posedge ps2_clk);
			ps2_data = 0; // d7
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // paridad
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // parada 
			rx_en = 0;
			#4000;
			
			// F0
			rx_en = 1;
			#4000;
			ps2_data = 0; // incio
			@(posedge ps2_clk);
			ps2_data = 0; // d0
			#4000;
			@(posedge ps2_clk);
			ps2_data = 0; // d1
			#4000;
			@(posedge ps2_clk);
			ps2_data = 0; // d2
			#4000;
			@(posedge ps2_clk);
			ps2_data = 0; // d3
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // d4
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // d5
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // d6
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // d7
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // paridad
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // parada 
			rx_en = 0;
			#4000;
			
			// Letra M=8'h3A
			rx_en = 1;
			#4000;
			ps2_data = 0; // incio
			@(posedge ps2_clk);
			ps2_data = 0; // d0
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // d1
			#4000;
			@(posedge ps2_clk);
			ps2_data = 0; // d2
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // d3
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // d4
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // d5
			#4000;
			@(posedge ps2_clk);
			ps2_data = 0; // d6
			#4000;
			@(posedge ps2_clk);
			ps2_data = 0; // d7
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // paridad
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // parada 
			rx_en = 0;
			#4000;
			
////////// Letra P=8'h4D
			rx_en = 1;
			#4000;
			ps2_data = 0; // incio
			@(posedge ps2_clk);
			ps2_data = 1; // d0
			#4000;
			@(posedge ps2_clk);
			ps2_data = 0; // d1
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // d2
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // d3
			#4000;
			@(posedge ps2_clk);
			ps2_data = 0; // d4
			#4000;
			@(posedge ps2_clk);
			ps2_data = 0; // d5
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // d6
			#4000;
			@(posedge ps2_clk);
			ps2_data = 0; // d7
			#4000;
			@(posedge ps2_clk);
			ps2_data = 0; // paridad
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // parada 
			rx_en = 0;
			#4000;
			
			// F0
			rx_en = 1;
			#4000;
			ps2_data = 0; // incio
			@(posedge ps2_clk);
			ps2_data = 0; // d0
			#4000;
			@(posedge ps2_clk);
			ps2_data = 0; // d1
			#4000;
			@(posedge ps2_clk);
			ps2_data = 0; // d2
			#4000;
			@(posedge ps2_clk);
			ps2_data = 0; // d3
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // d4
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // d5
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // d6
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // d7
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // paridad
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // parada 
			rx_en = 0;
			#4000;
			
			//Letra P=8'h4D
			rx_en = 1;
			#4000;
			ps2_data = 0; // incio
			@(posedge ps2_clk);
			ps2_data = 1; // d0
			#4000;
			@(posedge ps2_clk);
			ps2_data = 0; // d1
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // d2
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // d3
			#4000;
			@(posedge ps2_clk);
			ps2_data = 0; // d4
			#4000;
			@(posedge ps2_clk);
			ps2_data = 0; // d5
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // d6
			#4000;
			@(posedge ps2_clk);
			ps2_data = 0; // d7
			#4000;
			@(posedge ps2_clk);
			ps2_data = 0; // paridad
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // parada 
			rx_en = 0;
			#4000;
			

////////// Letra 0=8'h45
			rx_en = 1;
			#4000;
			ps2_data = 0; // incio
			@(posedge ps2_clk);
			ps2_data = 1; // d0
			#4000;
			@(posedge ps2_clk);
			ps2_data = 0; // d1
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // d2
			#4000;
			@(posedge ps2_clk);
			ps2_data = 0; // d3
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // d4
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // d5
			#4000;
			@(posedge ps2_clk);
			ps2_data = 0; // d6
			#4000;
			@(posedge ps2_clk);
			ps2_data = 0; // d7
			#4000;
			@(posedge ps2_clk);
			ps2_data = 0; // paridad
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // parada 
			rx_en = 0;
			#4000;
			
			// F0
			rx_en = 1;
			#4000;
			ps2_data = 0; // incio
			@(posedge ps2_clk);
			ps2_data = 0; // d0
			#4000;
			@(posedge ps2_clk);
			ps2_data = 0; // d1
			#4000;
			@(posedge ps2_clk);
			ps2_data = 0; // d2
			#4000;
			@(posedge ps2_clk);
			ps2_data = 0; // d3
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // d4
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // d5
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // d6
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // d7
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // paridad
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // parada 
			rx_en = 0;
			#4000;
			
			// Letra 0=8'h45
			rx_en = 1;
			#4000;
			ps2_data = 0; // incio
			@(posedge ps2_clk);
			ps2_data = 1; // d0
			#4000;
			@(posedge ps2_clk);
			ps2_data = 0; // d1
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // d2
			#4000;
			@(posedge ps2_clk);
			ps2_data = 0; // d3
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // d4
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // d5
			#4000;
			@(posedge ps2_clk);
			ps2_data = 0; // d6
			#4000;
			@(posedge ps2_clk);
			ps2_data = 0; // d7
			#4000;
			@(posedge ps2_clk);
			ps2_data = 0; // paridad
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // parada 
			rx_en = 0;
			#4000;
			
///////// Letra 9=8'h46
			rx_en = 1;
			#4000;
			ps2_data = 0; // incio
			@(posedge ps2_clk);
			ps2_data = 0; // d0
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // d1
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // d2
			#4000;
			@(posedge ps2_clk);
			ps2_data = 0; // d3
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // d4
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // d5
			#4000;
			@(posedge ps2_clk);
			ps2_data = 0; // d6
			#4000;
			@(posedge ps2_clk);
			ps2_data = 0; // d7
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // paridad
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // parada 
			rx_en = 0;
			#4000;
			
			// F0
			rx_en = 1;
			#4000;
			ps2_data = 0; // incio
			@(posedge ps2_clk);
			ps2_data = 0; // d0
			#4000;
			@(posedge ps2_clk);
			ps2_data = 0; // d1
			#4000;
			@(posedge ps2_clk);
			ps2_data = 0; // d2
			#4000;
			@(posedge ps2_clk);
			ps2_data = 0; // d3
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // d4
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // d5
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // d6
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // d7
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // paridad
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // parada 
			rx_en = 0;
			#4000;
			
			// Letra 9=8'h46
			rx_en = 1;
			#4000;
			ps2_data = 0; // incio
			@(posedge ps2_clk);
			ps2_data = 0; // d0
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // d1
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // d2
			#4000;
			@(posedge ps2_clk);
			ps2_data = 0; // d3
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // d4
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // d5
			#4000;
			@(posedge ps2_clk);
			ps2_data = 0; // d6
			#4000;
			@(posedge ps2_clk);
			ps2_data = 0; // d7
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // paridad
			#4000;
			@(posedge ps2_clk);
			ps2_data = 1; // parada 
			rx_en = 0;
			#4000;
			
			
		end
        
		// Add stimulus here

      
endmodule

