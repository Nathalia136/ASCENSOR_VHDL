LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY divisor IS
    GENERIC (
        DIVIDER : INTEGER := 25000000  -- Valor de división para la salida
    );
    PORT (
        CLK  : IN  STD_LOGIC;  -- Reloj de entrada
        out1 : OUT STD_LOGIC   -- Salida (división por DIVIDER)
    );
END divisor;

ARCHITECTURE Behavioral OF divisor IS
    SIGNAL count : INTEGER RANGE 0 TO DIVIDER := 0;  -- Contador para la salida
    SIGNAL temp  : STD_LOGIC := '0';                -- Señal temporal para out1
BEGIN
    PROCESS (CLK)
    BEGIN
        IF (rising_edge(CLK)) THEN
            -- Contador para out1
            IF (count = DIVIDER - 1) THEN
                temp  <= NOT temp;  -- Alternar la señal
                count <= 0;         -- Reiniciar contador
            ELSE
                count <= count + 1; -- Incrementar contador
            END IF;
        END IF;
    END PROCESS;

    -- Asignar la señal temporal a la salida
    out1 <= temp;
END Behavioral;