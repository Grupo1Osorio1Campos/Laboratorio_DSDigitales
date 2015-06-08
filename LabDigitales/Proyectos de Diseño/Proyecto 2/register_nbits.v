`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:27:16 04/14/2015 
// Design Name: 
// Module Name:    resgister_fil 
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
module resgister_fil #(parameter largo = 24)(

	input wire clk, reset,en,
	input wire [largo-1:0] entrada,
	output wire [largo-1:0] salida

    );

reg [largo-1:0] data_siguiente,data;

always @(posedge clk, posedge reset) 
begin 
  if (reset) begin data <=0; end
	else  begin data <= data_siguiente;
              	end
end


always @*
	begin
	   data_siguiente=data;
		if(en)
		data_siguiente = entrada;
		else 
		data_siguiente = data;
		
	end
	
assign salida=data; 	

endmodule

