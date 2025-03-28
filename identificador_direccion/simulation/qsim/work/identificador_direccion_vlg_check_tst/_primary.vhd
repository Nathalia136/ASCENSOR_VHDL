library verilog;
use verilog.vl_types.all;
entity identificador_direccion_vlg_check_tst is
    port(
        piso_destino    : in     vl_logic_vector(2 downto 0);
        sampler_rx      : in     vl_logic
    );
end identificador_direccion_vlg_check_tst;
