.main clear;

project compileall;

vsim -gui work.Simulacion_Proyecto_C_2;

add wave -position insertpoint \
sim:/Prueba_Prueba_2/clk_i;

add wave -position insertpoint \
sim:/Prueba_Prueba_2/rst_i;

add wave -position insertpoint \
sim:/Prueba_Prueba_2/ps2_data;

add wave -position insertpoint \
sim:/Prueba_Prueba_2/ps2_clk;

add wave -position insertpoint \
sim:/Prueba_Prueba_2/rx_en;

add wave -position insertpoint \
sim:/Prueba_Prueba_2/anodos_o;

add wave -position insertpoint \
sim:/Prueba_Prueba_2/codigo_o;

add wave -position insertpoint \
sim:/Prueba_Prueba_2/Ing_o;

add wave -position insertpoint \
sim:/Prueba_Prueba_2/Pres_o;

add wave -position insertpoint \
sim:/Prueba_Prueba_2/Alarm_o;

add wave -position insertpoint \
sim:/Prueba_Prueba_2/Elect_o;

add wave -position insertpoint \
sim:/Prueba_Prueba_2/Temp_o;

config wave -signalnamewidth 1;

run -all;