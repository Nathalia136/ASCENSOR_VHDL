library verilog;
use verilog.vl_types.all;
entity ControladorPuertas is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        llegada_piso    : in     vl_logic;
        abrir_manual    : in     vl_logic;
        cerrar_manual   : in     vl_logic;
        fallo_energia   : in     vl_logic;
        notificacion    : in     vl_logic;
        puerta          : out    vl_logic
    );
end ControladorPuertas;
