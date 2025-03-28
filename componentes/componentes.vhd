LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

package componentes is

	component Contador is
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
	end component;
	
	component DECOD7 is
		port(
			ABCD	: in  std_logic_vector(3 downto 0);
			DISPLAY	: out std_logic_vector(6 downto 0)
			);
	end component;
	
	component Des2 is
		 generic (
        INPUT_WIDTH : integer := 4 -- Ancho de la entrada (por defecto 4 bits)
    );
    port (
        entrada   : in  STD_LOGIC_VECTOR (INPUT_WIDTH-1 downto 0); -- Entrada binaria
        unidades  : out STD_LOGIC_VECTOR (3 downto 0);              -- Unidades en BCD
        decenas   : out STD_LOGIC_VECTOR (3 downto 0)               -- Decenas en BCD
    );
	end component;

	component divisor IS
		GENERIC (
        DIVIDER : INTEGER := 25000000  -- Valor de división para la salida
    );
    PORT (
        CLK  : IN  STD_LOGIC;  -- Reloj de entrada
        out1 : OUT STD_LOGIC   -- Salida (división por DIVIDER)
    );
	end component;
	
	component GenericTimer IS
		generic (
        MAX_COUNT : integer := 10 -- Duración máxima del temporizador (en segundos)
    );
    port (
        clk_1Hz : in std_logic;  -- Reloj de 1 Hz
        reset   : in std_logic;  -- Reiniciar temporizador
        start   : in std_logic;  -- Iniciar temporizador
        done    : out std_logic  -- Señal de fin de temporización
    );
	end component;
	
	component GenericRegister IS
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
	end component;
	
	component GenericComparator IS
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
	end component;
	
	component GenericMux IS
		generic (
        WIDTH : integer := 6;  -- Ancho de cada entrada
        NUM_INPUTS : integer := 5  -- Número de entradas (renombrado de INPUTS a NUM_INPUTS)
    );
    port (
        sel    : in std_logic_vector(NUM_INPUTS-1 downto 0);  -- Señal de selección
        inputs : in std_logic_vector(WIDTH*NUM_INPUTS-1 downto 0);  -- Entradas
        output : out std_logic_vector(WIDTH-1 downto 0)  -- Salida seleccionada
    );
	end component;
	
	component BuzzerController IS
		PORT (
        clk           : IN std_logic;          -- Reloj principal (50 MHz)
        reset         : IN std_logic;          -- Reinicio del sistema
        enable        : IN std_logic;          -- Habilitar el buzzer
        frequency_sel : IN std_logic;          -- Selección de frecuencia (0: 1 kHz, 1: 2 kHz)
        buzzer_out    : OUT std_logic          -- Salida del buzzer
    );
	end component;
	
	component ContadorPersonas IS
    PORT(
        clk           : IN STD_LOGIC;   -- Reloj de 1 Hz
        reset         : IN STD_LOGIC;   -- Reset global
        entrar_persona: IN STD_LOGIC;   -- Señal de entrada de una persona
        salir_persona : IN STD_LOGIC;   -- Señal de salida de una persona
        num_personas  : OUT STD_LOGIC_VECTOR(3 downto 0);  -- Número de personas dentro
        luces         : OUT STD_LOGIC;  -- Control de luces (1: encendidas, 0: apagadas)
        sobrecarga    : OUT STD_LOGIC   -- Señal de sobrecarga (1: >10 personas, 0: <=10)
    );
	END component;
	
	component ControladorPuertas IS
    PORT(
        clk           : IN STD_LOGIC;   -- Reloj de 1 Hz
        reset         : IN STD_LOGIC;   -- Reset global
        llegada_piso  : IN STD_LOGIC;   -- Señal de llegada a un piso
        abrir_manual  : IN STD_LOGIC;   -- Botón para abrir la puerta manualmente
        cerrar_manual : IN STD_LOGIC;   -- Botón para cerrar la puerta manualmente
        fallo_energia : IN STD_LOGIC;   -- Señal de fallo de energía
        notificacion  : IN STD_LOGIC;   -- Señal de notificación
        puerta        : OUT STD_LOGIC   -- Estado de la puerta (1: abierta, 0: cerrada)
    );
	END component;
	
	component Alarmas IS
    PORT(
        clk           : IN std_logic;          -- Reloj principal (50 MHz)
        reset         : IN std_logic;          -- Reinicio del sistema
        abrir_puerta  : IN std_logic;          -- Señal de apertura de puerta
        cerrar_puerta : IN std_logic;          -- Señal de cierre de puerta
        fallo_energia : IN std_logic;          -- Señal de fallo de energía
        notificacion  : IN std_logic;          -- Señal de notificación (botón presionado)
        sobrecarga    : IN std_logic;          -- Señal de sobrecarga (más de 10 personas)
        led_puerta_abi: OUT std_logic;         -- LED de alarma de puerta abierta
        led_puerta_cie: OUT std_logic;         -- LED de alarma de puerta cerrada
        led_fallo_en  : OUT std_logic;         -- LED de alarma de fallo de energía
        led_notif     : OUT std_logic;         -- LED de alarma de notificación
        led_sobrecarga: OUT std_logic          -- LED de alarma de sobrecarga
    );
	END component;
	
	component gestion_cabina IS
    PORT(
        clk           : IN std_logic;                     -- Reloj de 1 Hz
        reset         : IN std_logic;                     -- Reinicio del sistema
        botones_cabina: IN std_logic_vector(4 downto 0);  -- Botones internos (pisos 1-5)
        clear_request : IN std_logic_vector(4 downto 0);  -- Señal para limpiar solicitudes (1 bit por piso)
        solicitudes_internas: OUT std_logic_vector(4 downto 0)  -- Solicitudes internas activas
    );
	END component;
	
	component detectar_piso_actual is
    Port (
        clk_1Hz     : in  STD_LOGIC;
        reset       : in  STD_LOGIC;
        motor_subir : in  STD_LOGIC;
        motor_bajar : in  STD_LOGIC;
        piso_actual : out STD_LOGIC_VECTOR(2 downto 0)
    );
	END component;
	
	component identificador_direccion is
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
	END component;
	
	component ControlAscensor is
    Port (
        clk_1Hz         : in  STD_LOGIC;                    -- Reloj de 1 Hz
        reset           : in  STD_LOGIC;                    -- Reset global
        piso_actual     : in  STD_LOGIC_VECTOR(2 downto 0); -- Piso actual (3 bits)
        piso_destino    : in  STD_LOGIC_VECTOR(2 downto 0); -- Piso destino (3 bits)
        fallo_energia   : in  STD_LOGIC;                    -- Señal de fallo de energía
        notificacion    : in  STD_LOGIC;                    -- Señal de notificación
        sobrecarga      : in  STD_LOGIC;                    -- Señal de sobrecarga
        puerta          : in  STD_LOGIC;                    -- Estado de la puerta (1=abierta, 0=cerrada)
        motor_subir     : out STD_LOGIC;                    -- Señal de subida
        motor_bajar     : out STD_LOGIC;                    -- Señal de bajada
        llegada_piso    : out STD_LOGIC;                    -- '1' cuando llega al piso destino
        clear_request   : out STD_LOGIC_VECTOR(4 downto 0); -- Limpiar solicitudes internas (cabina)
        clear_request_subir : out STD_LOGIC_VECTOR(3 downto 0); -- Limpiar solicitudes externas (subir)
        clear_request_bajar : out STD_LOGIC_VECTOR(3 downto 0)  -- Limpiar solicitudes externas (bajar)
    );
	END component;
	
	component gestion_externas is
    Port (
        clk_1Hz         : in  STD_LOGIC;                    -- Reloj de 1 Hz
        reset           : in  STD_LOGIC;                    -- Reset global
        -- Botones externos (pisos válidos):
        BOTON_SUBIR     : in  STD_LOGIC_VECTOR(3 downto 0); -- SUBIR en pisos 1-4 (bits 0-3 = piso 1-4)
        BOTON_BAJAR     : in  STD_LOGIC_VECTOR(3 downto 0); -- BAJAR en pisos 2-5 (bits 0-3 = piso 2-5)
        -- Señales de limpieza:
        clear_request_subir : in  STD_LOGIC_VECTOR(3 downto 0); -- Limpiar SUBIR (pisos 1-4)
        clear_request_bajar : in  STD_LOGIC_VECTOR(3 downto 0); -- Limpiar BAJAR (pisos 2-5)
        -- Solicitudes activas:
        solicitudes_subir   : out STD_LOGIC_VECTOR(3 downto 0); -- SUBIR activas (pisos 1-4)
        solicitudes_bajar   : out STD_LOGIC_VECTOR(3 downto 0)  -- BAJAR activas (pisos 2-5)
    );
	END component;

end componentes;