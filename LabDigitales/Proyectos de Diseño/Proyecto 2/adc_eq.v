`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:58:51 04/08/2015 
// Design Name: 
// Module Name:    adc_eq 
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
module adc_eq(inicio,clk_adc,data_i,cs_o,data_o,rst_adc,garg,band);

//Declaración de las señales de entrada y salida
input wire inicio;
input wire clk_adc;
input wire  data_i;
output wire cs_o;
output wire [11:0] data_o;
input wire rst_adc;
output wire [3:0] garg;
output reg band;	

//Estados de la maquina que controlara la recepcion	 
localparam
idle = 2'b00,
dps = 2'b01,
load = 2'b10;

//variables de la maquina
reg [3:0] q_ac,q_next;
reg cs_ac,cs_next;
reg [1:0] estado_actl,estado_sgt;
reg [15:0] data_next,data_com;


always@ (posedge clk_adc or posedge rst_adc)
	if (rst_adc)
		begin
			estado_actl <= 0;
			q_ac <= 0;
			cs_ac <= 1;
			data_com <= 0;
		end
	else
		begin
			estado_actl <= estado_sgt;
			q_ac <= q_next;
			cs_ac <= cs_next;
			data_com <= data_next;
		end
		
//maquina de estados para la recepcion del dato
always @*
	begin
		estado_sgt = estado_actl;
		cs_next = cs_ac;
		q_next = q_ac;
		data_next = data_com;
		band = 1'b0;
		case (estado_actl)
			idle: 
			//estado de inicio se resetean lso valores ocurre cunado el cs del adc esta en alto
					begin
					if(cs_o && inicio)
						begin 
						cs_next = 1'b0;
						q_next = 4'd0;
						band = 1'b0;
						estado_sgt = dps;
						end
					else 
						estado_sgt = idle;
					end
			dps:
			//en este estado se ira recibinedo el dato y se va concatenando de igual
			//manera en el data_next para luego ser asignado al dato de salida
			//se esperara hasta que el contador llegue a 15 para mandar el dato completo
				begin
				if (q_next == 15)
					begin
					data_next  = {data_next[14:0],data_i};
					estado_sgt = load;
					end
				else
					begin
					q_next = q_next + 1'b1;
					data_next  = {data_next[14:0],data_i};
					end
				end
			load:
			//estado de carga de los datos se envia una señal para cs en alto 
			//y de igual manera se cargan el resto de los datos
				begin
					cs_next = 1'b1;
					band = 1'b1;
					data_next = 16'd0;
					estado_sgt = idle;
				end
			default: estado_sgt = idle;
		endcase
	end

//salidas del modulo
assign data_o[11:0] = data_com [11:0];
assign garg [3:0]  = data_com [15:12];
assign cs_o = cs_ac;

endmodule


