.main clear;

project addfile netgen/par/proyecto_corto_2_timesim.sdf;

project addfile netgen/par/Proyecto_Corto_2_timesim.v;

project compileall;

vsim -gui -L C:/Modeltech_pe_edu_10.4/lib/simprim -sdftyp /uut=C:/Users/Javier/Desktop/LabDigitales/Proyecto_Corto_2_Version_Final/netgen/par/proyecto_corto_2_timesim.sdf Testbench_Proyecto_C_2 simprim.glbl

add wave -position insertpoint sim:/Testbench_Proyecto_C_2/uut/*

config wave -signalnamewidth 1;

run 1ms;

wave zoom full;