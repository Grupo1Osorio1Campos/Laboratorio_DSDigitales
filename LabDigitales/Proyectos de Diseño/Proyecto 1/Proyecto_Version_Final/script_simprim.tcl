.main clear;

project addfile netgen/par/ProyectoTop_timesim.sdf;

project addfile netgen/par/ProyectoTop_timesim.v;

project compileall;

vsim -gui -L C:/Modeltech_pe_edu_10.4/lib/simprim -sdftyp {/uut=C:/Users/javier/Documents/Proyectos Xilinx/Proyecto/netgen/par/proyectotop_timesim.sdf} Testbench_Filtro simprim.glbl

add wave -position insertpoint sim:/Testbench_Filtro/uut/*

config wave -signalnamewidth 1;

run 1ms;

wave zoom full;