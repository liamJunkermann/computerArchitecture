LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY full_adder IS
  PORT (
    x, y, z : IN STD_LOGIC;
    s, c : OUT STD_LOGIC
  );
END full_adder;

ARCHITECTURE Behavioral OF full_adder IS
  COMPONENT half_adder
    PORT (
      x, y : IN STD_LOGIC;
      s, c : OUT STD_LOGIC
    );
  END COMPONENT;

  SIGNAL halfsum, halfcarry, totalcarry : STD_LOGIC;
BEGIN
  half_adder0 : half_adder PORT MAP(x, y, halfsum, halfcarry);
  half_adder1 : half_adder PORT MAP(z, halfsum, s, totalcarry);

  c <= totalcarry OR halfcarry;
END Behavioral; -- Behavioral