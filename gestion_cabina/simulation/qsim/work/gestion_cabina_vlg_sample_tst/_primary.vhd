library verilog;
use verilog.vl_types.all;
entity gestion_cabina_vlg_sample_tst is
    port(
        botones_cabina  : in     vl_logic_vector(4 downto 0);
        clear_request   : in     vl_logic_vector(4 downto 0);
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end gestion_cabina_vlg_sample_tst;
