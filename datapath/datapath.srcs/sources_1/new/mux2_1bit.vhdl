ENTITY mux2_1bit IS
  PORT (
    s, in_0, in_1 : IN STD_LOGIC;
    z : OUT STD_LOGIC
  );
END mux2_1bit;

ARCHITECTURE Behavioral OF mux2_1 IS
BEGIN
  PROCESS (s, in_0, in_1)
  BEGIN
    CASE s IS
      WHEN '1' => z <= in_0;
      WHEN '0' => z <= in_1;
      WHEN OTHERS => z <= in_0;
    END CASE;
  END PROCESS;

END Behavioral; -- Behavioral