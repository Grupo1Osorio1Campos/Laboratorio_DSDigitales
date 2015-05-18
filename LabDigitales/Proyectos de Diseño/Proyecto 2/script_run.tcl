.main clear;

project compileall;

vsim -gui work.Prueba;

add wave -position insertpoint -color "blue"\
sim:/Prueba/clk_i;

add wave -position insertpoint -color "yellow"\
sim:/Prueba/vin_i;

add wave -position insertpoint -color "yellow"\
sim:/Prueba/vout_o;

config wave -signalnamewidth 1;

run 10ms;

wave zoom full;
