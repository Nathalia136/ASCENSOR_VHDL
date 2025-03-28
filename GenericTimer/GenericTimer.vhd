library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; -- Agregar esta librería para usar to_unsigned y std_logic_vector

-- Entidad del temporizador genérico
entity GenericTimer is
    generic (
        MAX_COUNT : integer := 10 -- Duración máxima del temporizador (en segundos)
    );
    port (
        clk_1Hz : in std_logic;  -- Reloj de 1 Hz
        reset   : in std_logic;  -- Reiniciar temporizador
        start   : in std_logic;  -- Iniciar temporizador
        done    : out std_logic  -- Señal de fin de temporización
    );
end entity GenericTimer;

architecture Behavioral of GenericTimer is
    -- Declaración del componente contador genérico (externo)
    component Contador is
        generic (
            MIN_COUNT : integer := 0;
            MAX_COUNT : integer := 59
        );
        port (
            clk     : in std_logic;
            reset   : in std_logic;
            stop    : in std_logic;
            up_down : in std_logic;
            count   : out std_logic_vector(5 downto 0)
        );
    end component;

    signal cnt_enable : std_logic := '0'; -- Habilitar/deshabilitar el contador
    signal cnt_done   : std_logic;       -- Señal de fin de conteo del contador
    signal cnt_value  : std_logic_vector(5 downto 0); -- Salida del contador
begin
    -- Instanciación del contador genérico (externo)
    CounterInst: Contador
        generic map (
            MIN_COUNT => 0,      -- Valor mínimo del contador
            MAX_COUNT => MAX_COUNT -- Valor máximo del contador
        )
        port map (
            clk     => clk_1Hz,  -- Conectar el reloj de 1 Hz
            reset   => reset,    -- Conectar la señal de reset
            stop    => not cnt_enable, -- Pausar el contador cuando no está habilitado
            up_down => '1',      -- Contar hacia arriba
            count   => cnt_value -- Salida del contador
        );

    -- Lógica de control del temporizador
    process(clk_1Hz, reset)
    begin
        if reset = '1' then
            cnt_enable <= '0'; -- Deshabilitar el contador
            done <= '0';       -- Reiniciar la señal de fin
        elsif rising_edge(clk_1Hz) then
            if start = '1' then
                cnt_enable <= '1'; -- Habilitar el contador
            end if;

            if cnt_enable = '1' then
                if unsigned(cnt_value) = to_unsigned(MAX_COUNT - 1, 6) then
                    done <= '1';       -- Temporización completada
                    cnt_enable <= '0'; -- Deshabilitar el contador
                else
                    done <= '0';       -- Mantener la señal de fin en 0
                end if;
            end if;
        end if;
    end process;
end Behavioral;