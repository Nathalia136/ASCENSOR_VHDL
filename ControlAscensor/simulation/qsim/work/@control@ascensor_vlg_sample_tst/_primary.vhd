library verilog;
use verilog.vl_types.all;
entity ControlAscensor_vlg_sample_tst is
    port(
        clk_1Hz         : in     vl_logic;
        fallo_energia   : in     vl_logic;
        notificacion    : in     vl_logic;
        piso_actual     : in     vl_logic_vector(2 downto 0);
        piso_destino    : in     vl_logic_vector(2 downto 0);
        puerta          : in     vl_logic;
        reset           : in     vl_logic;
        sobrecarga      : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end ControlAscensor_vlg_sample_tst;
