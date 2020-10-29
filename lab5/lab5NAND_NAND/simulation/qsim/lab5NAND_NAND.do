onerror {exit -code 1}
vlib work
vlog -work work lab5NAND_NAND.vo
vlog -work work DFF.wvf.vwf.vt
vsim -novopt -c -t 1ps -L cyclonev_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.lab5NAND_NAND_vlg_vec_tst -voptargs="+acc"
vcd file -direction lab5NAND_NAND.msim.vcd
vcd add -internal lab5NAND_NAND_vlg_vec_tst/*
vcd add -internal lab5NAND_NAND_vlg_vec_tst/i1/*
run -all
quit -f
