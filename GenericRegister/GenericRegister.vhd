library ieee;
use ieee.std_logic_1164.all;

entity GenericRegister is
    generic (
        WIDTH : integer := 6 -- Ancho del registro
    );
    port (
        clk_1Hz : in std_logic;  -- Reloj de 1 Hz
        reset   : in std_logic;  -- Reiniciar registro
        enable  : in std_logic;  -- Habilitar escritura
        data_in : in std_logic_vector(WIDTH-1 downto 0);  -- Dato de entrada
        data_out: out std_logic_vector(WIDTH-1 downto 0)  -- Dato de salida
    );
end entity GenericRegister;

architecture Behavioral of GenericRegister is
    signal reg : std_logic_vector(WIDTH-1 downto 0); -- Registro interno
begin
    process(clk_1Hz, reset)
    begin
        if reset = '1' then
            reg <= (others => '0'); -- Reiniciar registro
        elsif rising_edge(clk_1Hz) then
            if enable = '1' then
                reg <= data_in; -- Escribir dato en el registro
            end if;
        end if;
    end process;

    data_out <= reg; -- Asignar el valor del registro a la salida
end Behavioral;