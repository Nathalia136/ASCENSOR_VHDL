library verilog;
use verilog.vl_types.all;
entity ControlAscensor is
    port(
        clk_1Hz         : in     vl_logic;
        reset           : in     vl_logic;
        piso_actual     : in     vl_logic_vector(2 downto 0);
        piso_destino    : in     vl_logic_vector(2 downto 0);
        fallo_energia   : in     vl_logic;
        notificacion    : in     vl_logic;
        sobrecarga      : in     vl_logic;
        puerta          : in     vl_logic;
        motor_subir     : out    vl_logic;
        motor_bajar     : out    vl_logic;
        llegada_piso    : out    vl_logic;
        clear_request   : out    vl_logic_vector(4 downto 0);
        clear_request_subir: out    vl_logic_vector(3 downto 0);
        clear_request_bajar: out    vl_logic_vector(3 downto 0)
    );
end ControlAscensor;
