library verilog;
use verilog.vl_types.all;
entity gestion_externas is
    port(
        clk_1Hz         : in     vl_logic;
        reset           : in     vl_logic;
        BOTON_SUBIR     : in     vl_logic_vector(3 downto 0);
        BOTON_BAJAR     : in     vl_logic_vector(3 downto 0);
        clear_request_subir: in     vl_logic_vector(3 downto 0);
        clear_request_bajar: in     vl_logic_vector(3 downto 0);
        solicitudes_subir: out    vl_logic_vector(3 downto 0);
        solicitudes_bajar: out    vl_logic_vector(3 downto 0)
    );
end gestion_externas;
