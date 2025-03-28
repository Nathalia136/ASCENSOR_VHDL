library verilog;
use verilog.vl_types.all;
entity detectar_piso_actual_vlg_sample_tst is
    port(
        clk_1Hz         : in     vl_logic;
        motor_bajar     : in     vl_logic;
        motor_subir     : in     vl_logic;
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end detectar_piso_actual_vlg_sample_tst;
