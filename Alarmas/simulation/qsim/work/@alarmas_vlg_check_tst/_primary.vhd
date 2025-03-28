library verilog;
use verilog.vl_types.all;
entity Alarmas_vlg_check_tst is
    port(
        led_fallo_en    : in     vl_logic;
        led_notif       : in     vl_logic;
        led_puerta_abi  : in     vl_logic;
        led_puerta_cie  : in     vl_logic;
        led_sobrecarga  : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Alarmas_vlg_check_tst;
