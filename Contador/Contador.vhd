library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Entidad del contador genérico
entity Contador is
    generic (
        MIN_COUNT : integer := 0;  -- Valor mínimo del contador
        MAX_COUNT : integer := 59  -- Valor máximo del contador
    );
    port (
        clk     : in std_logic;   -- Reloj de 1 Hz
        reset   : in std_logic;   -- Reiniciar contador
        stop    : in std_logic;   -- Pausar contador
        up_down : in std_logic;   -- Dirección de conteo (1: up, 0: down)
        count   : out std_logic_vector(5 downto 0)  -- Salida del contador
    );
end entity Contador;

architecture Behavioral of Contador is
    signal cnt_value : integer range MIN_COUNT to MAX_COUNT := MIN_COUNT; -- Contador interno
begin
    process(clk, reset)
    begin
        if reset = '1' then
            cnt_value <= MIN_COUNT; -- Reiniciar contador
        elsif rising_edge(clk) and stop = '0' then
            if up_down = '1' then
                -- Modo cuenta ascendente
                if cnt_value = MAX_COUNT then
                    cnt_value <= MIN_COUNT; -- Reiniciar contador
                else
                    cnt_value <= cnt_value + 1; -- Incrementar contador
                end if;
            else
                -- Modo cuenta descendente
                if cnt_value = MIN_COUNT then
                    cnt_value <= MAX_COUNT; -- Reiniciar contador
                else
                    cnt_value <= cnt_value - 1; -- Decrementar contador
                end if;
            end if;
        end if;
    end process;

    -- Convertir el valor del contador a std_logic_vector
    count <= std_logic_vector(to_unsigned(cnt_value, 6));
end Behavioral;