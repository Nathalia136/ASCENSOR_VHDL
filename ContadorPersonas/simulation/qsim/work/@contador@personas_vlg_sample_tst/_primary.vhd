library verilog;
use verilog.vl_types.all;
entity ContadorPersonas_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        entrar_persona  : in     vl_logic;
        reset           : in     vl_logic;
        salir_persona   : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end ContadorPersonas_vlg_sample_tst;
