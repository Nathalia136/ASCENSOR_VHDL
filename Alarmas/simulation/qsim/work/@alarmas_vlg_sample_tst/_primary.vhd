library verilog;
use verilog.vl_types.all;
entity Alarmas_vlg_sample_tst is
    port(
        abrir_puerta    : in     vl_logic;
        cerrar_puerta   : in     vl_logic;
        clk             : in     vl_logic;
        fallo_energia   : in     vl_logic;
        notificacion    : in     vl_logic;
        reset           : in     vl_logic;
        sobrecarga      : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Alarmas_vlg_sample_tst;
