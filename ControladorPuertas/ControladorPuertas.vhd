LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE work.componentes.ALL;  -- Usar la librería de componentes

-- Entidad del controlador de puertas
ENTITY ControladorPuertas IS
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
END ControladorPuertas;

ARCHITECTURE Behavioral OF ControladorPuertas IS
    signal puerta_abierta_int   : STD_LOGIC := '0';
    signal timer_apertura_done  : STD_LOGIC;
    signal timer_cierre_done    : STD_LOGIC;
    signal iniciar_timer_apertura : STD_LOGIC := '0';
    signal iniciar_timer_cierre   : STD_LOGIC := '0';
    signal reset_timer_apertura   : STD_LOGIC := '0';
    signal reset_timer_cierre     : STD_LOGIC := '0';
    signal llegada_detectada      : STD_LOGIC := '0';  -- Pulso interno para registrar la llegada
BEGIN
    -- Temporizador apertura (10s)
    timer_apertura: GenericTimer
        GENERIC MAP (MAX_COUNT => 10)
        PORT MAP (
            clk_1Hz => clk,
            reset   => reset OR reset_timer_apertura,
            start   => iniciar_timer_apertura,
            done    => timer_apertura_done
        );

    -- Temporizador cierre (45s)
    timer_cierre: GenericTimer
        GENERIC MAP (MAX_COUNT => 45)
        PORT MAP (
            clk_1Hz => clk,
            reset   => reset OR reset_timer_cierre,
            start   => iniciar_timer_cierre,
            done    => timer_cierre_done
        );

    -- Registro para almacenar el estado de la puerta
    RegistroPuerta: GenericRegister
        GENERIC MAP (WIDTH => 1)
        PORT MAP (
            clk_1Hz => clk,
            reset   => reset,
            enable  => '1',
            data_in(0) => puerta_abierta_int,
            data_out(0) => puerta
        );

    PROCESS (clk, reset)
    BEGIN
        IF reset = '1' THEN
            puerta_abierta_int     <= '0';
            iniciar_timer_apertura <= '0';
            iniciar_timer_cierre   <= '0';
            reset_timer_apertura   <= '0';
            reset_timer_cierre     <= '0';
            llegada_detectada      <= '0';
        ELSIF rising_edge(clk) THEN
            IF fallo_energia = '1' OR notificacion = '1' THEN
                puerta_abierta_int     <= '0';
                iniciar_timer_apertura <= '0';
                iniciar_timer_cierre   <= '0';
                reset_timer_apertura   <= '1';
                reset_timer_cierre     <= '1';
                llegada_detectada      <= '0';
            ELSE
                -- Registrar llegada solo una vez
                IF llegada_piso = '1' AND puerta_abierta_int = '0' AND llegada_detectada = '0' THEN
                    llegada_detectada <= '1';
                    iniciar_timer_apertura <= '1';  -- Iniciar solo una vez
                ELSE
                    iniciar_timer_apertura <= '0';
                END IF;

                -- Abrir puerta cuando termina temporizador o se pulsa abrir_manual
                IF (timer_apertura_done = '1' OR abrir_manual = '1') AND puerta_abierta_int = '0' THEN
                    puerta_abierta_int     <= '1';
                    iniciar_timer_cierre   <= '1';
                    reset_timer_apertura   <= '1';
                    llegada_detectada      <= '0';  -- Reset del pulso tras abrir puerta
                ELSE
                    reset_timer_apertura   <= '0';
                END IF;

                -- Cerrar la puerta
                IF (cerrar_manual = '1' OR timer_cierre_done = '1') AND puerta_abierta_int = '1' THEN
                    puerta_abierta_int     <= '0';
                    iniciar_timer_cierre   <= '0';
                    reset_timer_cierre     <= '1';
                ELSE
                    reset_timer_cierre     <= '0';
                END IF;
            END IF;
        END IF;
    END PROCESS;
END Behavioral;