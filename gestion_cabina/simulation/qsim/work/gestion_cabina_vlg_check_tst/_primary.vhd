library verilog;
use verilog.vl_types.all;
entity gestion_cabina_vlg_check_tst is
    port(
        solicitudes_internas: in     vl_logic_vector(4 downto 0);
        sampler_rx      : in     vl_logic
    );
end gestion_cabina_vlg_check_tst;
