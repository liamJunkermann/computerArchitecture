LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY mux2_32bit IS
  PORT (
    s : IN STD_LOGIC;
    in1 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in2 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    z : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END mux2_32bit;

ARCHITECTURE Behavioural OF mux2_32bit IS
BEGIN
  PROCESS (s, in1, in2)
  BEGIN
    CASE s IS
      WHEN '0' => z <= in1;
      WHEN '1' => z <= in2;
      WHEN OTHERS => z <= in1;
    END CASE;
  END PROCESS;
END Behavioural; -- Behavioural