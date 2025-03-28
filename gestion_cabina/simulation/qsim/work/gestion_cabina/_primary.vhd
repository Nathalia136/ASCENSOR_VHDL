library verilog;
use verilog.vl_types.all;
entity gestion_cabina is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        botones_cabina  : in     vl_logic_vector(4 downto 0);
        clear_request   : in     vl_logic_vector(4 downto 0);
        solicitudes_internas: out    vl_logic_vector(4 downto 0)
    );
end gestion_cabina;
