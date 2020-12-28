LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY ripple_adder IS
  PORT (
    a, b : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    c_in : IN STD_LOGIC;
    s : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    c_out, v_out : OUT STD_LOGIC
  );
END ripple_adder;

ARCHITECTURE structure_ripple OF ripple_adder IS
  COMPONENT full_adder
    PORT (
      x, y, z : IN STD_LOGIC;
      s, c : OUT STD_LOGIC
    );
  END COMPONENT;

  SIGNAL c : STD_LOGIC_VECTOR(31 DOWNTO 1);
  SIGNAL c_final : STD_LOGIC;

BEGIN
  Bit0 : full_adder
  PORT MAP(b(0), a(0), c_in, s(0), c(1));

  Bit1 : full_adder
  PORT MAP(b(1), a(1), c(1), s(1), c(2));

  Bit2 : full_adder
  PORT MAP(b(2), a(2), c(2), s(2), c(3));

  Bit3 : full_adder
  PORT MAP(b(3), a(3), c(3), s(3), c(4));

  Bit4 : full_adder
  PORT MAP(b(4), a(4), c(4), s(4), c(5));

  Bit5 : full_adder
  PORT MAP(b(5), a(5), c(5), s(5), c(6));

  Bit6 : full_adder
  PORT MAP(b(6), a(6), c(6), s(6), c(7));

  Bit7 : full_adder
  PORT MAP(b(7), a(7), c(7), s(7), c(8));

  Bit8 : full_adder
  PORT MAP(b(8), a(8), c(8), s(8), c(9));

  Bit9 : full_adder
  PORT MAP(b(9), a(9), c(9), s(9), c(10));

  Bit10 : full_adder
  PORT MAP(b(10), a(10), c(10), s(10), c(11));

  Bit11 : full_adder
  PORT MAP(b(11), a(11), c(11), s(11), c(12));

  Bit12 : full_adder
  PORT MAP(b(12), a(12), c(12), s(12), c(13));

  Bit13 : full_adder
  PORT MAP(b(13), a(13), c(13), s(13), c(14));

  Bit14 : full_adder
  PORT MAP(b(14), a(14), c(14), s(14), c(15));

  Bit15 : full_adder
  PORT MAP(b(15), a(15), c(15), s(15), c(16));

  Bit16 : full_adder
  PORT MAP(b(16), a(16), c(16), s(16), c(17));

  Bit17 : full_adder
  PORT MAP(b(17), a(17), c(17), s(17), c(18));

  Bit18 : full_adder
  PORT MAP(b(18), a(18), c(18), s(18), c(19));

  Bit19 : full_adder
  PORT MAP(b(19), a(19), c(19), s(19), c(20));

  Bit20 : full_adder
  PORT MAP(b(20), a(20), c(20), s(20), c(21));

  Bit21 : full_adder
  PORT MAP(b(21), a(21), c(21), s(21), c(22));

  Bit22 : full_adder
  PORT MAP(b(22), a(22), c(22), s(22), c(23));

  Bit23 : full_adder
  PORT MAP(b(23), a(23), c(23), s(23), c(24));

  Bit24 : full_adder
  PORT MAP(b(24), a(24), c(24), s(24), c(25));

  Bit25 : full_adder
  PORT MAP(b(25), a(25), c(25), s(25), c(26));

  Bit26 : full_adder
  PORT MAP(b(26), a(26), c(26), s(26), c(27));

  Bit27 : full_adder
  PORT MAP(b(27), a(27), c(27), s(27), c(28));

  Bit28 : full_adder
  PORT MAP(b(28), a(28), c(28), s(28), c(29));

  Bit29 : full_adder
  PORT MAP(b(29), a(29), c(29), s(29), c(30));

  Bit30 : full_adder
  PORT MAP(b(30), a(30), c(30), s(30), c(31));

  Bit31 : full_adder
  PORT MAP(b(31), a(31), c(31), s(31), c_final);

  c_out <= c_final;
  v_out <= (c(15) XOR c_final);
END structure_ripple; -- structure_ripple