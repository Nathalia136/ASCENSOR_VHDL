library verilog;
use verilog.vl_types.all;
entity identificador_direccion_vlg_sample_tst is
    port(
        clk_1Hz         : in     vl_logic;
        motor_bajar     : in     vl_logic;
        motor_subir     : in     vl_logic;
        reset           : in     vl_logic;
        solicitudes_bajar: in     vl_logic_vector(3 downto 0);
        solicitudes_cabina: in     vl_logic_vector(4 downto 0);
        solicitudes_subir: in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end identificador_direccion_vlg_sample_tst;
