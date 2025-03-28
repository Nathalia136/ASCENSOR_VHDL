library verilog;
use verilog.vl_types.all;
entity detectar_piso_actual is
    port(
        clk_1Hz         : in     vl_logic;
        reset           : in     vl_logic;
        motor_subir     : in     vl_logic;
        motor_bajar     : in     vl_logic;
        piso_actual     : out    vl_logic_vector(2 downto 0)
    );
end detectar_piso_actual;
