LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY input_parser IS
  PORT (
    b : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_in : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    y : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END input_parser;

ARCHITECTURE Behavioral OF input_parser IS

  COMPONENT mux2_1bit
    PORT (
      s, in_0, in_1 : IN STD_LOGIC;
      z : OUT STD_LOGIC
    );
  END COMPONENT;
BEGIN
  mux00000 : mux2_1bit PORT MAP(
    s => b(0),
    in_0 => s_in(0),
    in_1 => s_in(1),
    z => y(0)
  );
  mux00001 : mux2_1bit PORT MAP(
    s => b(1),
    in_0 => s_in(0),
    in_1 => s_in(1),
    z => y(1)
  );
  mux00010 : mux2_1bit PORT MAP(
    s => b(2),
    in_0 => s_in(0),
    in_1 => s_in(1),
    z => y(2)
  );
  mux00011 : mux2_1bit PORT MAP(
    s => b(3),
    in_0 => s_in(0),
    in_1 => s_in(1),
    z => y(3)
  );
  mux00100 : mux2_1bit PORT MAP(
    s => b(4),
    in_0 => s_in(0),
    in_1 => s_in(1),
    z => y(4)
  );
  mux00101 : mux2_1bit PORT MAP(
    s => b(5),
    in_0 => s_in(0),
    in_1 => s_in(1),
    z => y(5)
  );
  mux00110 : mux2_1bit PORT MAP(
    s => b(6),
    in_0 => s_in(0),
    in_1 => s_in(1),
    z => y(6)
  );
  mux00111 : mux2_1bit PORT MAP(
    s => b(7),
    in_0 => s_in(0),
    in_1 => s_in(1),
    z => y(7)
  );
  mux01000 : mux2_1bit PORT MAP(
    s => b(8),
    in_0 => s_in(0),
    in_1 => s_in(1),
    z => y(8)
  );
  mux01001 : mux2_1bit PORT MAP(
    s => b(9),
    in_0 => s_in(0),
    in_1 => s_in(1),
    z => y(9)
  );
  mux01010 : mux2_1bit PORT MAP(
    s => b(10),
    in_0 => s_in(0),
    in_1 => s_in(1),
    z => y(10)
  );
  mux01011 : mux2_1bit PORT MAP(
    s => b(11),
    in_0 => s_in(0),
    in_1 => s_in(1),
    z => y(11)
  );
  mux01100 : mux2_1bit PORT MAP(
    s => b(12),
    in_0 => s_in(0),
    in_1 => s_in(1),
    z => y(12)
  );
  mux01101 : mux2_1bit PORT MAP(
    s => b(13),
    in_0 => s_in(0),
    in_1 => s_in(1),
    z => y(13)
  );
  mux01110 : mux2_1bit PORT MAP(
    s => b(14),
    in_0 => s_in(0),
    in_1 => s_in(1),
    z => y(14)
  );
  mux01111 : mux2_1bit PORT MAP(
    s => b(15),
    in_0 => s_in(0),
    in_1 => s_in(1),
    z => y(15)
  );
  mux10000 : mux2_1bit PORT MAP(
    s => b(16),
    in_0 => s_in(0),
    in_1 => s_in(1),
    z => y(16)
  );
  mux10001 : mux2_1bit PORT MAP(
    s => b(17),
    in_0 => s_in(0),
    in_1 => s_in(1),
    z => y(17)
  );
  mux10010 : mux2_1bit PORT MAP(
    s => b(18),
    in_0 => s_in(0),
    in_1 => s_in(1),
    z => y(18)
  );
  mux10011 : mux2_1bit PORT MAP(
    s => b(19),
    in_0 => s_in(0),
    in_1 => s_in(1),
    z => y(19)
  );
  mux10100 : mux2_1bit PORT MAP(
    s => b(20),
    in_0 => s_in(0),
    in_1 => s_in(1),
    z => y(20)
  );
  mux10101 : mux2_1bit PORT MAP(
    s => b(21),
    in_0 => s_in(0),
    in_1 => s_in(1),
    z => y(21)
  );
  mux10110 : mux2_1bit PORT MAP(
    s => b(22),
    in_0 => s_in(0),
    in_1 => s_in(1),
    z => y(22)
  );
  mux10111 : mux2_1bit PORT MAP(
    s => b(23),
    in_0 => s_in(0),
    in_1 => s_in(1),
    z => y(23)
  );
  mux11000 : mux2_1bit PORT MAP(
    s => b(24),
    in_0 => s_in(0),
    in_1 => s_in(1),
    z => y(24)
  );
  mux11001 : mux2_1bit PORT MAP(
    s => b(25),
    in_0 => s_in(0),
    in_1 => s_in(1),
    z => y(25)
  );
  mux11010 : mux2_1bit PORT MAP(
    s => b(26),
    in_0 => s_in(0),
    in_1 => s_in(1),
    z => y(26)
  );
  mux11011 : mux2_1bit PORT MAP(
    s => b(27),
    in_0 => s_in(0),
    in_1 => s_in(1),
    z => y(27)
  );
  mux11100 : mux2_1bit PORT MAP(
    s => b(28),
    in_0 => s_in(0),
    in_1 => s_in(1),
    z => y(28)
  );
  mux11101 : mux2_1bit PORT MAP(
    s => b(29),
    in_0 => s_in(0),
    in_1 => s_in(1),
    z => y(29)
  );
  mux11110 : mux2_1bit PORT MAP(
    s => b(30),
    in_0 => s_in(0),
    in_1 => s_in(1),
    z => y(30)
  );
  mux11111 : mux2_1bit PORT MAP(
    s => b(31),
    in_0 => s_in(0),
    in_1 => s_in(1),
    z => y(31)
  );

END Behavioral; -- Behavioral