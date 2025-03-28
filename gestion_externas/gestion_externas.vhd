library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.componentes.all;

entity gestion_externas is
    Port (
        clk_1Hz         : in  STD_LOGIC;
        reset           : in  STD_LOGIC;
        BOTON_SUBIR     : in  STD_LOGIC_VECTOR(3 downto 0);
        BOTON_BAJAR     : in  STD_LOGIC_VECTOR(3 downto 0);
        clear_request_subir : in  STD_LOGIC_VECTOR(3 downto 0);
        clear_request_bajar : in  STD_LOGIC_VECTOR(3 downto 0);
        solicitudes_subir   : out STD_LOGIC_VECTOR(3 downto 0);
        solicitudes_bajar   : out STD_LOGIC_VECTOR(3 downto 0)
    );
end gestion_externas;

architecture Behavioral of gestion_externas is
    signal reg_subir, reg_bajar : STD_LOGIC_VECTOR(3 downto 0) := "0000";
    signal subir_pulsos, bajar_pulsos : STD_LOGIC_VECTOR(3 downto 0);
    signal subir_prev, bajar_prev : STD_LOGIC_VECTOR(3 downto 0) := "0000";
begin

    -- Detección de flancos de subida para botones SUBIR
    process(clk_1Hz)
    begin
        if rising_edge(clk_1Hz) then
            subir_prev <= BOTON_SUBIR;
            for i in 0 to 3 loop
                subir_pulsos(i) <= BOTON_SUBIR(i) and not subir_prev(i);
            end loop;
        end if;
    end process;

    -- Detección de flancos de subida para botones BAJAR
    process(clk_1Hz)
    begin
        if rising_edge(clk_1Hz) then
            bajar_prev <= BOTON_BAJAR;
            for i in 0 to 3 loop
                bajar_pulsos(i) <= BOTON_BAJAR(i) and not bajar_prev(i);
            end loop;
        end if;
    end process;

    -- Registro para solicitudes SUBIR (pisos 1-4)
    RegistroSubir: GenericRegister
    generic map(WIDTH => 4)
    port map(
        clk_1Hz => clk_1Hz,
        reset   => reset,
        enable  => '1',
        data_in => (reg_subir or subir_pulsos) and not clear_request_subir,
        data_out=> reg_subir
    );

    -- Registro para solicitudes BAJAR (pisos 2-5)
    RegistroBajar: GenericRegister
    generic map(WIDTH => 4)
    port map(
        clk_1Hz => clk_1Hz,
        reset   => reset,
        enable  => '1',
        data_in => (reg_bajar or bajar_pulsos) and not clear_request_bajar,
        data_out=> reg_bajar
    );

    -- Asignar salidas
    solicitudes_subir <= reg_subir;
    solicitudes_bajar <= reg_bajar;

end Behavioral;