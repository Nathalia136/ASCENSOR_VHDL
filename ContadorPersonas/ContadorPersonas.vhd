LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE work.componentes.ALL;

ENTITY ContadorPersonas IS
    PORT(    
        clk           : IN STD_LOGIC;
        reset         : IN STD_LOGIC;
        entrar_persona: IN STD_LOGIC;
        salir_persona : IN STD_LOGIC;
        num_personas  : OUT STD_LOGIC_VECTOR(3 downto 0);
        luces         : OUT STD_LOGIC;
        sobrecarga    : OUT STD_LOGIC
    );
END ContadorPersonas;

ARCHITECTURE Behavioral OF ContadorPersonas IS
    signal contador_reset : STD_LOGIC;
    signal contador_stop  : STD_LOGIC;
    signal contador_up_down : STD_LOGIC;
    signal contador_count : STD_LOGIC_VECTOR(5 downto 0);
    
    signal num_personas_next : STD_LOGIC_VECTOR(3 downto 0);
    signal num_personas_reg  : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    signal luces_next        : STD_LOGIC;
    signal luces_reg         : STD_LOGIC := '0';
    signal sobrecarga_int    : STD_LOGIC := '0';
    
    signal max_alcanzado : STD_LOGIC := '0';
    signal min_alcanzado : STD_LOGIC := '0';
BEGIN

    -- Instanciación del contador genérico
    CONTADOR_GENERICO: Contador
        GENERIC MAP (
            MIN_COUNT => 0,
            MAX_COUNT => 15
        )
        PORT MAP (
            clk     => clk,
            reset   => contador_reset,
            stop    => contador_stop,
            up_down => contador_up_down,
            count   => contador_count
        );

    -- Registros
    REG_PERSONAS: GenericRegister
        GENERIC MAP (WIDTH => 4)
        PORT MAP (
            clk_1Hz => clk,
            reset   => reset,
            enable  => '1',
            data_in => num_personas_next,
            data_out => num_personas_reg
        );

    REG_LUCES: GenericRegister
        GENERIC MAP (WIDTH => 1)
        PORT MAP (
            clk_1Hz => clk,
            reset   => reset,
            enable  => '1',
            data_in(0) => luces_next,
            data_out(0) => luces_reg
        );

    -- Lógica de control
    contador_reset <= reset;
    
    -- Detección de límites
    max_alcanzado <= '1' WHEN contador_count >= "001111" ELSE '0'; -- 15 en binario
    min_alcanzado <= '1' WHEN contador_count = "000000" ELSE '0';
    
    -- Control del contador
    contador_stop <= '1' WHEN (entrar_persona = '0' AND salir_persona = '0') OR
                             (max_alcanzado = '1' AND entrar_persona = '1') OR
                             (min_alcanzado = '1' AND salir_persona = '1') ELSE '0';
    
    -- Dirección del contador
    contador_up_down <= '1' WHEN entrar_persona = '1' ELSE '0';
    
    -- Protección contra overflow/underflow
    num_personas_next <= "1111" WHEN contador_count > "001111" ELSE -- Máximo 15
                         "0000" WHEN contador_count(5) = '1' ELSE   -- Underflow
                         contador_count(3 downto 0);

    -- Lógica de salidas
    luces_next <= '1' WHEN num_personas_next > "0000" ELSE '0';
    sobrecarga_int <= '1' WHEN num_personas_next > "1010" ELSE '0'; -- 10 en binario

    -- Asignación de salidas
    num_personas <= num_personas_reg;
    luces <= luces_reg;
    sobrecarga <= sobrecarga_int;
END Behavioral;