library verilog;
use verilog.vl_types.all;
entity DECOD7_vlg_sample_tst is
    port(
        ABCD            : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end DECOD7_vlg_sample_tst;
