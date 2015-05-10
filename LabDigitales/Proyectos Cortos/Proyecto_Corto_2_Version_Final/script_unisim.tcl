.main clear;

project addfile netgen/synthesis/Proyecto_Corto_2_synthesis.v;

project compileall;

vsim -gui -L C:/Modeltech_pe_edu_10.4/lib/unisim Testbench_Proyecto_C_2 unisim.glbl

add wave -position insertpoint sim:/Testbench_Proyecto_C_2/uut/*

config wave -signalnamewidth 1;

run 1ms;

wave zoom full;
