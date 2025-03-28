library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.componentes.all;

entity gestion_cabina is
    Port (
        clk         : in  STD_LOGIC;
        reset           : in  STD_LOGIC;
        botones_cabina  : in  STD_LOGIC_VECTOR(4 downto 0);
        clear_request   : in  STD_LOGIC_VECTOR(4 downto 0);
        solicitudes_internas: out STD_LOGIC_VECTOR(4 downto 0)
    );
end gestion_cabina;

architecture Behavioral of gestion_cabina is
    signal reg_solicitudes : STD_LOGIC_VECTOR(4 downto 0) := "00000";
    signal boton_pulsos, boton_prev : STD_LOGIC_VECTOR(4 downto 0) := "00000";
begin

    -- Detección de flancos de subida para botones de cabina
    process(clk)
    begin
        if rising_edge(clk) then
            boton_prev <= botones_cabina;
            for i in 0 to 4 loop
                boton_pulsos(i) <= botones_cabina(i) and not boton_prev(i);
            end loop;
        end if;
    end process;

    -- Registro para almacenar solicitudes internas
    reg_solicitudes_proc: GenericRegister
    generic map(WIDTH => 5)
    port map(
        clk_1Hz => clk,
        reset   => reset,
        enable  => '1',
        data_in => (reg_solicitudes or boton_pulsos) and not clear_request,
        data_out=> reg_solicitudes
    );

    -- Asignación de salidas
    solicitudes_internas <= reg_solicitudes;

end Behavioral;