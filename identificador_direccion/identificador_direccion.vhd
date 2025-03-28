library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.componentes.all;

entity identificador_direccion is
    Port (
        clk_1Hz             : in  STD_LOGIC;
        reset               : in  STD_LOGIC;
        motor_subir         : in  STD_LOGIC;
        motor_bajar         : in  STD_LOGIC;
        solicitudes_subir   : in  STD_LOGIC_VECTOR(3 downto 0);
        solicitudes_bajar   : in  STD_LOGIC_VECTOR(3 downto 0);
        solicitudes_cabina  : in  STD_LOGIC_VECTOR(4 downto 0);
        piso_destino        : out STD_LOGIC_VECTOR(2 downto 0)
    );
end identificador_direccion;

architecture Behavioral of identificador_direccion is
    signal destino_int      : integer range 1 to 5 := 1;
    signal direccion_actual : STD_LOGIC_VECTOR(1 downto 0) := "00";
    signal solicitudes_combinadas : STD_LOGIC_VECTOR(4 downto 0);
    signal reg_piso_destino : STD_LOGIC_VECTOR(2 downto 0) := "001";
    signal ultimo_piso_atendido : integer range 1 to 5 := 1;
begin

    RegistroDestino: GenericRegister
    generic map(WIDTH => 3)
    port map(
        clk_1Hz => clk_1Hz,
        reset   => reset,
        enable  => '1',
        data_in => std_logic_vector(to_unsigned(destino_int, 3)),
        data_out=> reg_piso_destino
    );

    process(clk_1Hz, reset)
    begin
        if reset = '1' then
            direccion_actual <= "00";
        elsif rising_edge(clk_1Hz) then
            if motor_subir = '1' then
                direccion_actual <= "01";
            elsif motor_bajar = '1' then
                direccion_actual <= "10";
            else
                direccion_actual <= "00";
            end if;
        end if;
    end process;

    -- Combinación CORREGIDA de solicitudes
    solicitudes_combinadas <= solicitudes_cabina or 
                             ("0" & solicitudes_subir) or 
                             (solicitudes_bajar & "0");

    process(clk_1Hz)
        variable found : boolean := false;
        variable piso_actual_sim : integer range 1 to 5;
    begin
        if rising_edge(clk_1Hz) then
            found := false;
            piso_actual_sim := to_integer(unsigned(reg_piso_destino));

            case direccion_actual is
                when "01" => -- Subiendo
                    -- Buscar pisos superiores al actual
                    for i in 1 to 5 loop
                        if i > piso_actual_sim and solicitudes_combinadas(i-1) = '1' then
                            destino_int <= i;
                            found := true;
                            exit;
                        end if;
                    end loop;
                    
                    -- Si no hay superiores, buscar inferiores
                    if not found then
                        for i in 1 to 5 loop
                            if i < piso_actual_sim and solicitudes_combinadas(i-1) = '1' then
                                destino_int <= i;
                                found := true;
                                exit;
                            end if;
                        end loop;
                    end if;

                when "10" => -- Bajando
                    -- Buscar pisos inferiores al actual
                    for i in 1 to 5 loop
                        if i < piso_actual_sim and solicitudes_combinadas(i-1) = '1' then
                            destino_int <= i;
                            found := true;
                            exit;
                        end if;
                    end loop;
                    
                    -- Si no hay inferiores, buscar superiores
                    if not found then
                        for i in 1 to 5 loop
                            if i > piso_actual_sim and solicitudes_combinadas(i-1) = '1' then
                                destino_int <= i;
                                found := true;
                                exit;
                            end if;
                        end loop;
                    end if;

                when others => -- Detenido
                    -- Buscar cualquier piso solicitado
                    for i in 1 to 5 loop
                        if solicitudes_combinadas(i-1) = '1' then
                            destino_int <= i;
                            found := true;
                            exit;
                        end if;
                    end loop;
            end case;

            -- Mantener último piso si no hay solicitudes
            if not found then
                destino_int <= ultimo_piso_atendido;
            else
                ultimo_piso_atendido <= destino_int;
            end if;
        end if;
    end process;

    piso_destino <= reg_piso_destino;

end Behavioral;