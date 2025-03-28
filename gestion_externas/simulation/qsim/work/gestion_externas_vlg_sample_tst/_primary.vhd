library verilog;
use verilog.vl_types.all;
entity gestion_externas_vlg_sample_tst is
    port(
        BOTON_BAJAR     : in     vl_logic_vector(3 downto 0);
        BOTON_SUBIR     : in     vl_logic_vector(3 downto 0);
        clear_request_bajar: in     vl_logic_vector(3 downto 0);
        clear_request_subir: in     vl_logic_vector(3 downto 0);
        clk_1Hz         : in     vl_logic;
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end gestion_externas_vlg_sample_tst;
