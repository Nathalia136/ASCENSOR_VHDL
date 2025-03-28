library ieee;
use ieee.std_logic_1164.all;

entity GenericComparator is
    generic (
        WIDTH : integer := 6 -- Ancho de los datos a comparar
    );
    port (
        A      : in std_logic_vector(WIDTH-1 downto 0);  -- Valor A
        B      : in std_logic_vector(WIDTH-1 downto 0);  -- Valor B
        equal  : out std_logic;  -- A = B
        greater: out std_logic;  -- A > B
        less   : out std_logic   -- A < B
    );
end entity GenericComparator;

architecture Behavioral of GenericComparator is
begin
    equal   <= '1' when A = B else '0';
    greater <= '1' when A > B else '0';
    less    <= '1' when A < B else '0';
end Behavioral;