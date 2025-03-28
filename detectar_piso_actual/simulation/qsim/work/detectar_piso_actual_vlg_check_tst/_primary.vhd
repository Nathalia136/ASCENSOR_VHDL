library verilog;
use verilog.vl_types.all;
entity detectar_piso_actual_vlg_check_tst is
    port(
        piso_actual     : in     vl_logic_vector(2 downto 0);
        sampler_rx      : in     vl_logic
    );
end detectar_piso_actual_vlg_check_tst;
