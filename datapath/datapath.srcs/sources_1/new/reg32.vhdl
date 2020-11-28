LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY reg32 IS
  PORT (
    D : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    load0, load1, Clk : IN STD_LOGIC;
    Q : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END reg32;

ARCHITECTURE Behaviour OF reg32 IS
BEGIN
  PROCESS (Clk)
  BEGIN
    IF (rising_edge(Clk)) THEN
      IF (load0 = '1' AND load1 = '1') THEN
        Q <= D AFTER 5ns;
      END IF;
    END IF;
  END PROCESS;
END Behaviour;