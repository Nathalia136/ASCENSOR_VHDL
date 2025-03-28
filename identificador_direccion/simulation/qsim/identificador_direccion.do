onerror {exit -code 1}
vlib work
vlog -work work identificador_direccion.vo
vlog -work work Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.identificador_direccion_vlg_vec_tst -voptargs="+acc"
vcd file -direction identificador_direccion.msim.vcd
vcd add -internal identificador_direccion_vlg_vec_tst/*
vcd add -internal identificador_direccion_vlg_vec_tst/i1/*
run -all
quit -f
