library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Des2 is
    Port (
        entrada : in  STD_LOGIC_VECTOR (3 downto 0);  -- Entrada de 4 bits (0 a 15)
        unidades : out STD_LOGIC_VECTOR (3 downto 0); -- Unidades en decimal (4 bits)
        decenas : out STD_LOGIC_VECTOR (3 downto 0)   -- Decenas en decimal (4 bits)
    );
end Des2;

architecture arch_Des2 of Des2 is
    signal num_entero : integer range 0 to 15; -- Señal para convertir la entrada a entero
begin
    process(entrada)
    begin
        -- Convertir la entrada de 4 bits a un entero
        num_entero <= CONV_INTEGER(entrada);

        -- Calcular decenas y unidades usando división y módulo
        decenas <= CONV_STD_LOGIC_VECTOR(num_entero / 10, 4); -- Decenas = entrada / 10
        unidades <= CONV_STD_LOGIC_VECTOR(num_entero mod 10, 4); -- Unidades = entrada mod 10
    end process;
end arch_Des2;