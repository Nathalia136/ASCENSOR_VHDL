library verilog;
use verilog.vl_types.all;
entity ContadorPersonas is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        entrar_persona  : in     vl_logic;
        salir_persona   : in     vl_logic;
        num_personas    : out    vl_logic_vector(3 downto 0);
        luces           : out    vl_logic;
        sobrecarga      : out    vl_logic
    );
end ContadorPersonas;
