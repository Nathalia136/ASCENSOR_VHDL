library verilog;
use verilog.vl_types.all;
entity ContadorPersonas_vlg_check_tst is
    port(
        luces           : in     vl_logic;
        num_personas    : in     vl_logic_vector(3 downto 0);
        sobrecarga      : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end ContadorPersonas_vlg_check_tst;
