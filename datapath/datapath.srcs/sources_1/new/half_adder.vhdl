LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY half_adder IS
  PORT (
    x, y : IN STD_LOGIC;
    s, c : OUT STD_LOGIC
  );
END half_adder;

ARCHITECTURE Behavioral OF half_adder IS
BEGIN
  s <= x XOR y;
  c <= x AND y;

END Behavioral; -- Behavioral