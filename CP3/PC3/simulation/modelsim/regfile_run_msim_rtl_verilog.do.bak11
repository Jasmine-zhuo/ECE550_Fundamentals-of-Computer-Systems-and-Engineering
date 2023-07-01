transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/17.0/PC3 {C:/intelFPGA_lite/17.0/PC3/dffe.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/17.0/PC3 {C:/intelFPGA_lite/17.0/PC3/regfile.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/17.0/PC3 {C:/intelFPGA_lite/17.0/PC3/tristate_buffer.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/17.0/PC3 {C:/intelFPGA_lite/17.0/PC3/register.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/17.0/PC3 {C:/intelFPGA_lite/17.0/PC3/decoder.v}

vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/17.0/PC3 {C:/intelFPGA_lite/17.0/PC3/regfile_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  regfile_tb

add wave *
view structure
view signals
run -all
