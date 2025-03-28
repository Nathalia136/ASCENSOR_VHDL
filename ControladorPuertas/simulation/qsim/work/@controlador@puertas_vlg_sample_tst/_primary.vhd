library verilog;
use verilog.vl_types.all;
entity ControladorPuertas_vlg_sample_tst is
    port(
        abrir_manual    : in     vl_logic;
        cerrar_manual   : in     vl_logic;
        clk             : in     vl_logic;
        fallo_energia   : in     vl_logic;
        llegada_piso    : in     vl_logic;
        notificacion    : in     vl_logic;
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end ControladorPuertas_vlg_sample_tst;
