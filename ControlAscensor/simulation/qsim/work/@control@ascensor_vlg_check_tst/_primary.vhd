library verilog;
use verilog.vl_types.all;
entity ControlAscensor_vlg_check_tst is
    port(
        clear_request   : in     vl_logic_vector(4 downto 0);
        clear_request_bajar: in     vl_logic_vector(3 downto 0);
        clear_request_subir: in     vl_logic_vector(3 downto 0);
        llegada_piso    : in     vl_logic;
        motor_bajar     : in     vl_logic;
        motor_subir     : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end ControlAscensor_vlg_check_tst;
