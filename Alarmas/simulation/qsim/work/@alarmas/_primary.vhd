library verilog;
use verilog.vl_types.all;
entity Alarmas is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        abrir_puerta    : in     vl_logic;
        cerrar_puerta   : in     vl_logic;
        fallo_energia   : in     vl_logic;
        notificacion    : in     vl_logic;
        sobrecarga      : in     vl_logic;
        led_puerta_abi  : out    vl_logic;
        led_puerta_cie  : out    vl_logic;
        led_fallo_en    : out    vl_logic;
        led_notif       : out    vl_logic;
        led_sobrecarga  : out    vl_logic
    );
end Alarmas;
