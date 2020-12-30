LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY functional_unit IS
  PORT (
    a_in, b_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    function_select : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    v, c, n, z : OUT STD_LOGIC;
    f : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END functional_unit;

ARCHITECTURE Behavioral OF functional_unit IS

  COMPONENT alu
    PORT (
      a_in, b_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      g_in : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      v, c : OUT STD_LOGIC;
      g_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
  END COMPONENT;

  COMPONENT shifter
    PORT (
      b : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      IL, IR : IN STD_LOGIC;
      h : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
  END COMPONENT;

  COMPONENT mux2_32bit
    PORT (
      s : IN STD_LOGIC;
      in1 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      in2 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      z : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
  END COMPONENT;

  SIGNAL alu_out, shifter_out, final_signal : STD_LOGIC_VECTOR(31 DOWNTO 0);

BEGIN

  alu0 : alu PORT MAP(
    a_in => a_in,
    b_in => b_in,
    g_in => function_select(3 DOWNTO 0),
    v => v,
    c => c,
    g_out => alu_out
  );

  shifter0 : shifter PORT MAP(
    b => b_in,
    s => function_select(3 DOWNTO 2),
    IL => '0',
    IR => '0',
    h => shifter_out
  );

  mux2_32bit0 : mux2_32bit PORT MAP(
    s => function_select(4),
    in1 => alu_out,
    in2 => shifter_out,
    z => final_signal
  );

  f <= final_signal;
  n <= final_signal(15);
  z <= (final_signal(31) OR final_signal(30) OR final_signal(29) OR final_signal(28) OR final_signal(27)
    OR final_signal(26) OR final_signal(25) OR final_signal(24) OR final_signal(23) OR final_signal(22)
    OR final_signal(21) OR final_signal(20) OR final_signal(19) OR final_signal(18) OR final_signal(17)
    OR final_signal(16) OR final_signal(15) OR final_signal(14) OR final_signal(13) OR final_signal(12)
    OR final_signal(11) OR final_signal(10) OR final_signal(9) OR final_signal(8) OR final_signal(7) OR final_signal(6)
    OR final_signal(5) OR final_signal(4) OR final_signal(3) OR final_signal(2) OR final_signal(1) OR final_signal(0));

END Behavioral; -- Behavioral