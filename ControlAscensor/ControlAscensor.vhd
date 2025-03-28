library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.componentes.all;

-- Entidad principal del controlador del ascensor
entity ControlAscensor is
    Port (
        -- Entradas de control
        clk_1Hz         : in  STD_LOGIC;          -- Reloj de 1 Hz para sincronización
        reset           : in  STD_LOGIC;          -- Reinicio global del sistema
        piso_actual     : in  STD_LOGIC_VECTOR(2 downto 0);  -- Piso actual del ascensor (binario)
        piso_destino    : in  STD_LOGIC_VECTOR(2 downto 0);  -- Piso destino solicitado (binario)
        
        -- Señales de estado y fallos
        fallo_energia   : in  STD_LOGIC;          -- Indica fallo de energía
        notificacion    : in  STD_LOGIC;          -- Notificación de emergencia
        sobrecarga      : in  STD_LOGIC;          -- Sensor de sobrecarga de peso
        puerta          : in  STD_LOGIC;          -- Estado de la puerta (1 = abierta, 0 = cerrada)
        
        -- Salidas de control del motor
        motor_subir     : out STD_LOGIC;          -- Activa el motor para subir
        motor_bajar     : out STD_LOGIC;          -- Activa el motor para bajar
        llegada_piso    : out STD_LOGIC;          -- Indica que se ha llegado al piso destino
        
        -- Señales para limpiar solicitudes
        clear_request   : out STD_LOGIC_VECTOR(4 downto 0);  -- Limpia solicitudes de la cabina (pisos 1-5)
        clear_request_subir : out STD_LOGIC_VECTOR(3 downto 0);  -- Limpia solicitudes externas de subida (pisos 1-4)
        clear_request_bajar : out STD_LOGIC_VECTOR(3 downto 0)   -- Limpia solicitudes externas de bajada (pisos 2-5)
    );
end ControlAscensor;

architecture Behavioral of ControlAscensor is
    -- Señales de comparación de pisos
    signal equal, greater, less : STD_LOGIC;  -- Resultados de comparación (igual, mayor, menor)
    
    -- Señales de control del motor
    signal motor_state  : STD_LOGIC_VECTOR(1 downto 0) := "00";  -- Estado actual del motor (00=detenido, 01=bajar, 10=subir)
    signal motor_in     : STD_LOGIC_VECTOR(1 downto 0);          -- Próximo estado del motor
    
    -- Señales de estado del sistema
    signal fault        : STD_LOGIC;  -- Indica cualquier tipo de fallo (OR de fallos)
    signal piso_destino_num : integer range 1 to 5;  -- Piso destino convertido a entero
    
    -- Temporización y control de puertas
    signal timer_done   : STD_LOGIC;  -- Indica que el temporizador ha finalizado
    signal start_timer  : STD_LOGIC := '0';  -- Inicia el temporizador
    signal esperando_puerta : STD_LOGIC := '0';  -- Estado de espera por cierre de puertas
    signal puerta_cerrada   : STD_LOGIC;  -- Versión invertida de la señal de puerta
    signal movimiento_permitido : STD_LOGIC;  -- Indica si el movimiento está permitido
    signal timeout_puerta   : STD_LOGIC := '0';  -- Timeout por puerta abierta demasiado tiempo
    signal contador_timeout : integer range 0 to 30 := 0;  -- Contador para el timeout
    constant TIMEOUT_MAX    : integer := 30;  -- Tiempo máximo de espera (30 ciclos de reloj = 30 segundos)

begin
    -- Lógica combinacional básica
    puerta_cerrada <= not puerta;  -- Convertir señal de puerta a lógica inversa
    fault <= fallo_energia or notificacion or sobrecarga;  -- Cualquier fallo detiene el sistema
    
    -- Convertir piso destino a entero con protección de rango
    piso_destino_num <= to_integer(unsigned(piso_destino)) when unsigned(piso_destino) >= 1 and 
                                                             unsigned(piso_destino) <= 5 else
                        1;  -- Valor por defecto si fuera de rango

    -- Comparador de pisos actual y destino
    Comparator: GenericComparator
    generic map(WIDTH => 3)  -- Comparador de 3 bits (pisos 0-7 teóricos)
    port map(
        A => piso_actual,    -- Entrada A = piso actual
        B => piso_destino,    -- Entrada B = piso destino
        equal => equal,       -- Señal de igualdad
        greater => greater,   -- Señal de A > B
        less => less          -- Señal de A < B
    );

    -- Registro de estado del motor
    MotorRegister: GenericRegister
    generic map(WIDTH => 2)  -- Registro de 2 bits para estados del motor
    port map(
        clk_1Hz => clk_1Hz,  -- Sincronizado con reloj de 1 Hz
        reset => reset,       -- Reinicio síncrono
        enable => '1',        -- Siempre habilitado
        data_in => motor_in,  -- Próximo estado del motor
        data_out => motor_state  -- Estado actual del motor
    );

    -- Temporizador para espera de puertas
    Timer: GenericTimer
    generic map(MAX_COUNT => 11)  -- Temporizador de 11 segundos (ajustable)
    port map(
        clk_1Hz => clk_1Hz,          -- Reloj de referencia
        reset => reset or (not esperando_puerta),  -- Reinicia cuando no está esperando
        start => start_timer,         -- Inicia la cuenta
        done => timer_done            -- Indica fin de temporización
    );

    -- Control de movimiento permitido
    movimiento_permitido <= puerta_cerrada and not esperando_puerta and not timeout_puerta;

    -- Lógica de próximo estado del motor
    motor_in <= "00" when fault = '1' else            -- Prioridad 1: Fallos
                "00" when movimiento_permitido = '0' else  -- Prioridad 2: Movimiento no permitido
                "10" when less = '1' else             -- Subir si destino > actual
                "01" when greater = '1' else          -- Bajar si destino < actual
                "00";                                -- Detenerse si igual

    -- Activación física de los motores (solo si está permitido)
    motor_subir <= motor_state(1) and movimiento_permitido;  -- Bit 1 = subir
    motor_bajar <= motor_state(0) and movimiento_permitido;  -- Bit 0 = bajar

    -- Proceso principal de control
    process(clk_1Hz, reset)
    begin
        if reset = '1' then  -- Reinicio asíncrono
            -- Limpiar todas las señales
            clear_request <= (others => '0');
            clear_request_subir <= (others => '0');
            clear_request_bajar <= (others => '0');
            start_timer <= '0';
            esperando_puerta <= '0';
            llegada_piso <= '0';
            timeout_puerta <= '0';
            contador_timeout <= 0;
            
        elsif rising_edge(clk_1Hz) then  -- Sincronizado con reloj
            -- Valores por defecto en cada ciclo
            clear_request <= (others => '0');
            clear_request_subir <= (others => '0');
            clear_request_bajar <= (others => '0');
            llegada_piso <= '0';
            
            -- Lógica de llegada a piso
            if equal = '1' and fault = '0' and esperando_puerta = '0' then
                llegada_piso <= '1';  -- Indicar llegada
                
                -- Limpiar solicitud de la cabina (pisos 1-5)
                clear_request(piso_destino_num - 1) <= '1';
                
                -- Limpiar solicitudes de SUBIR (pisos 1-4)
                if piso_destino_num > 1 and piso_destino_num <= 4 then
                    clear_request_subir(piso_destino_num - 1) <= '1';  -- Mapeo: piso 2 -> bit 1, etc.
                end if;
                
                -- Limpiar solicitudes de BAJAR (pisos 2-5)
                if piso_destino_num >= 2 and piso_destino_num <= 5 then
                    if piso_destino_num = 5 then
                        clear_request_bajar(3) <= '1';  -- Piso 5 mapea al bit 3 (vector 0-3)
                    else
                        clear_request_bajar(piso_destino_num - 2) <= '1';  -- Piso 2 -> bit 0, etc.
                    end if;
                end if;
                
                -- Iniciar temporizador de espera para puertas
                start_timer <= '1';
                esperando_puerta <= '1';
            end if;
            
            -- Control de timeout de puerta abierta
            if esperando_puerta = '1' and puerta_cerrada = '0' then
                if contador_timeout < TIMEOUT_MAX then
                    contador_timeout <= contador_timeout + 1;  -- Incrementar contador
                else
                    timeout_puerta <= '1';  -- Activar señal de timeout
                end if;
            else
                contador_timeout <= 0;  -- Resetear contador si no está esperando
            end if;
            
            -- Finalización de espera de puertas
            if timer_done = '1' and puerta_cerrada = '1' then
                esperando_puerta <= '0';  -- Salir del estado de espera
                start_timer <= '0';       -- Detener temporizador
                timeout_puerta <= '0';    -- Resetear timeout
            end if;
        end if;
    end process;

end Behavioral;