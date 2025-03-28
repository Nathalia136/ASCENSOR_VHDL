library verilog;
use verilog.vl_types.all;
entity DECOD7 is
    port(
        ABCD            : in     vl_logic_vector(3 downto 0);
        DISPLAY         : out    vl_logic_vector(6 downto 0)
    );
end DECOD7;
