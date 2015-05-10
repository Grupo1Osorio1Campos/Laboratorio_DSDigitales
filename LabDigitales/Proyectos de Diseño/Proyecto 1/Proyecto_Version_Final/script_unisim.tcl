.main clear;

project addfile netgen/synthesis/ProyectoTop_synthesis.v;

project compileall;

vsim -gui -L C:/Modeltech_pe_edu_10.4/lib/unisim unisim.glbl

add wave -position insertpoint sim:/Testbench_Filtro/uut/*

config wave -signalnamewidth 1;

run 1ms;

wave zoom full;
