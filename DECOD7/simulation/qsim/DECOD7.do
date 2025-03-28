onerror {exit -code 1}
vlib work
vlog -work work DECOD7.vo
vlog -work work Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.DECOD7_vlg_vec_tst -voptargs="+acc"
vcd file -direction DECOD7.msim.vcd
vcd add -internal DECOD7_vlg_vec_tst/*
vcd add -internal DECOD7_vlg_vec_tst/i1/*
run -all
quit -f
