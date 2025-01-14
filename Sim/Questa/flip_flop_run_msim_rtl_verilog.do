transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/admin/Desktop/FPGACODE/Lab_Two/flip_flop/RTL {C:/Users/admin/Desktop/FPGACODE/Lab_Two/flip_flop/RTL/flip_flop.v}

vlog -vlog01compat -work work +incdir+C:/Users/admin/Desktop/FPGACODE/Lab_Two/flip_flop/Quartus_prj/../Sim {C:/Users/admin/Desktop/FPGACODE/Lab_Two/flip_flop/Quartus_prj/../Sim/tb_flip_flop.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  tb_flip_flop

add wave *
view structure
view signals
run 500 ns
