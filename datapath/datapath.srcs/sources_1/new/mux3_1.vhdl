ENTITY mux3_1 IS
  PORT (
    in0, in1, in2 : IN STD_LOGIC;
    s : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    z : OUT STD_LOGIC
  );
END mux3_1;

ARCHITECTURE Behavioral OF mux3_1 IS

BEGIN
  z <= in0 AFTER 1ns WHEN(s <= "00") ELSE
    in1 AFTER 1ns WHEN(s <= "01") ELSE
    in2 AFTER 1ns WHEN(s <= "10");

END Behavioral; -- Behavioral