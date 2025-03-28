library verilog;
use verilog.vl_types.all;
entity gestion_externas_vlg_check_tst is
    port(
        solicitudes_bajar: in     vl_logic_vector(3 downto 0);
        solicitudes_subir: in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end gestion_externas_vlg_check_tst;
