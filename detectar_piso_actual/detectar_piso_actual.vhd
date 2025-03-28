library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.componentes.all;

-- Entidad para detectar el piso actual del ascensor
entity detectar_piso_actual is
    Port (
        clk_1Hz     : in  STD_LOGIC; -- Reloj de 1 Hz
        reset       : in  STD_LOGIC; -- Reset global
        motor_subir : in  STD_LOGIC; -- Señal de subida
        motor_bajar : in  STD_LOGIC; -- Señal de bajada
        piso_actual : out STD_LOGIC_VECTOR(2 downto 0) -- Piso actual (3 bits)
    );
end detectar_piso_actual;

architecture Behavioral of detectar_piso_actual is
    signal piso_actual_int  : integer range 1 to 5 := 1; -- Piso actual como entero
    signal timer_done       : STD_LOGIC := '0'; -- Señal de temporizador completado
    signal timer_start      : STD_LOGIC := '0'; -- Señal para iniciar el temporizador
    signal movimiento_activo: STD_LOGIC := '0'; -- Señal de movimiento activo
    signal piso_actual_reg  : STD_LOGIC_VECTOR(2 downto 0); -- Señal registrada
begin

    -- Instancia del temporizador de 5 segundos
    TimerInst: GenericTimer
    generic map (MAX_COUNT => 5)
    port map (
        clk_1Hz => clk_1Hz,
        reset   => reset,
        start   => timer_start,
        done    => timer_done
    );

    process(clk_1Hz, reset)
    begin
        if reset = '1' then
            piso_actual_int <= 1; -- Reiniciar al piso 1
            timer_start <= '0';
            movimiento_activo <= '0';
            
        elsif rising_edge(clk_1Hz) then
            -- Detección de flanco de movimiento
            if (motor_subir = '1' or motor_bajar = '1') and movimiento_activo = '0' then
                timer_start <= '1'; -- Iniciar temporizador
                movimiento_activo <= '1'; -- Activar movimiento
                
            elsif movimiento_activo = '1' then
                if timer_done = '1' then
                    -- Lógica de cambio de piso
                    if motor_subir = '1' and piso_actual_int < 5 then
                        piso_actual_int <= piso_actual_int + 1; -- Subir un piso
                    elsif motor_bajar = '1' and piso_actual_int > 1 then
                        piso_actual_int <= piso_actual_int - 1; -- Bajar un piso
                    end if;
                    
                    -- Reset para próximo ciclo
                    timer_start <= '0';
                    movimiento_activo <= '0';
                end if;
            end if;
        end if;
    end process;

    -- Registro para la salida piso_actual
    RegPisoActual: GenericRegister
    generic map (WIDTH => 3) -- 3 bits para el piso
    port map (
        clk_1Hz => clk_1Hz,
        reset   => reset,
        enable  => '1',
        data_in => STD_LOGIC_VECTOR(to_unsigned(piso_actual_int, 3)),
        data_out => piso_actual_reg
    );

    -- Asignación de la salida registrada
    piso_actual <= piso_actual_reg;

end Behavioral;