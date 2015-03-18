`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:28:13 03/17/2015
// Design Name:   Prueba_2
// Module Name:   C:/Users/Javier/Desktop/LabDigitales/Proyecto_Corto_2_LDSD/Prueba_Prueba_2.v
// Project Name:  Proyecto_Corto_2_LDSD
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Prueba_2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Prueba_Prueba_2;

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
	wire Alarm_o;
	wire Elect_o;
	wire [4:0] Temp_o;
	wire data_o_o;

	// Instantiate the Unit Under Test (UUT)
	Prueba_2 uut (
		.clk_i(clk_i), 
		.rst_i(rst_i), 
		.ps2_data(ps2_data), 
		.ps2_clk(ps2_clk), 
		.rx_en(rx_en), 
		.anodos_o(anodos_o), 
		.codigo_o(codigo_o), 
		.Ing_o(Ing_o), 
		.Pres_o(Pres_o), 
		.Alarm_o(Alarm_o), 
		.Elect_o(Elect_o), 
		.Temp_o(Temp_o), 
		.data_o_o(data_o_o)
	);

	initial begin
		// Initialize Inputs
		clk_i = 0;
		rst_i = 1;
		ps2_data = 0;
		ps2_clk = 0;
		rx_en = 1;

		// Wait 100 ns for global reset to finish
		#20 rst_i = 0;
		//#20 rx_en = 1;
	

	
		//rx_en = 1;		//31
		//#200;
		@(posedge ps2_clk)
		ps2_data = 0;//bit inicio
		#200;
		@(posedge ps2_clk)
		ps2_data = 1;//d0	
		#200;
		@(posedge ps2_clk)
		ps2_data = 0;//d1
		#200;
		@(posedge ps2_clk)
		ps2_data = 0;//d2
		#200;
		@(posedge ps2_clk)		
		ps2_data = 0;//d3		
		#200;
		@(posedge ps2_clk)
		ps2_data = 1;//d4		
		#200;
		@(posedge ps2_clk)
		ps2_data = 1;//d5		
		#200;
		@(posedge ps2_clk)
		ps2_data = 0;//d6		
		#200;
		@(posedge ps2_clk)
		ps2_data = 0;//d7		
		#200;
		@(posedge ps2_clk)
		ps2_data = 1;//paridad
		#200;
		@(posedge ps2_clk)
		ps2_data = 1;//bit parada
		#200;
		//rx_en = 0;		
		//#200;
		
		//rx_en = 1;		//F0
		//#200;
		@(posedge ps2_clk)
		ps2_data = 0;//bit inicio
		#200;
		@(posedge ps2_clk)
		ps2_data = 0;//d0	
		#200;
		@(posedge ps2_clk)
		ps2_data = 0;//d1
		#200;
		@(posedge ps2_clk)
		ps2_data = 0;//d2
		#200;
		@(posedge ps2_clk)		
		ps2_data = 0;//d3		
		#200;
		@(posedge ps2_clk)
		ps2_data = 1;//d4		
		#200;
		@(posedge ps2_clk)
		ps2_data = 1;//d5		
		#200;
		@(posedge ps2_clk)
		ps2_data = 1;//d6		
		#200;
		@(posedge ps2_clk)
		ps2_data = 1;//d7		
		#200;
		@(posedge ps2_clk)
		ps2_data = 1;//paridad
		#200;
		@(posedge ps2_clk)
		ps2_data = 1;//bit parada
		#200;
		//rx_en = 0;		
		//#200;

		//rx_en = 1;		//31
		//#200;
		@(posedge ps2_clk)
		ps2_data = 0;//bit inicio
		#200;
		@(posedge ps2_clk)
		ps2_data = 1;//d0	
		#200;
		@(posedge ps2_clk)
		ps2_data = 0;//d1
		#200;
		@(posedge ps2_clk)
		ps2_data = 0;//d2
		#200;
		@(posedge ps2_clk)		
		ps2_data = 0;//d3		
		#200;
		@(posedge ps2_clk)
		ps2_data = 1;//d4		
		#200;
		@(posedge ps2_clk)
		ps2_data = 1;//d5		
		#200;
		@(posedge ps2_clk)
		ps2_data = 0;//d6		
		#200;
		@(posedge ps2_clk)
		ps2_data = 0;//d7		
		#200;
		@(posedge ps2_clk)
		ps2_data = 0;//paridad
		#200;
		@(posedge ps2_clk)
		ps2_data = 1;//bit parada
		#200;
		//rx_en = 0;		
		//#200;
		
		// Add stimulus here

	end
	initial forever #10 clk_i = !clk_i;    
	initial forever #100 ps2_clk = !ps2_clk;   	
endmodule


