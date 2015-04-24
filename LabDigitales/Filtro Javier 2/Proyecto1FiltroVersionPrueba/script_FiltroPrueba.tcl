.main clear;

project compileall;

vsim -gui work.TB_filtro1;

add wave -position insertpoint -color "blue"\
sim:/TB_filtro1/data_out;

add wave -position insertpoint -color "blue"\
sim:/TB_filtro1/data_i;

config wave -signalnamewidth 1;

run 1000ms;

wave zoom full;
