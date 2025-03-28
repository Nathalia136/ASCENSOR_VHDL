onerror {exit -code 1}
vlib work
vlog -work work detectar_piso_actual.vo
vlog -work work Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.detectar_piso_actual_vlg_vec_tst -voptargs="+acc"
vcd file -direction detectar_piso_actual.msim.vcd
vcd add -internal detectar_piso_actual_vlg_vec_tst/*
vcd add -internal detectar_piso_actual_vlg_vec_tst/i1/*
run -all
quit -f
