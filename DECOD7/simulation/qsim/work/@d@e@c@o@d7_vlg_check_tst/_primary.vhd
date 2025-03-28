library verilog;
use verilog.vl_types.all;
entity DECOD7_vlg_check_tst is
    port(
        DISPLAY         : in     vl_logic_vector(6 downto 0);
        sampler_rx      : in     vl_logic
    );
end DECOD7_vlg_check_tst;
