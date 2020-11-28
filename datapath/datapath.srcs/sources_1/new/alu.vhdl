library IEEE;
use IEEE.std_logic_1164.all;

ENTITY alu IS
  PORT (
    a_in, b_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    g_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    v, c : OUT STD_LOGIC;
    g_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END alu;

ARCHITECTURE Behavior OF alu IS

  COMPONENT ripple_adder
    PORT (
      a, b : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      c_in : IN STD_LOGIC;
      s : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      c_out, v_out : OUT STD_LOGIC
    );
  END COMPONENT;

  COMPONENT input_selector
    PORT (
      a_in, b_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_in : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      selected : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
  END COMPONENT;

  COMPONENT input_parser
    PORT (
      b : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_in : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      y : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
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

  SIGNAL input_selected, input_parsed, ripple_adder_result : STD_LOGIC_VECTOR(31 DOWNTO 0);

BEGIN

  input_selector : input_selector PORT MAP(
    a_in => a_in,
    b_in => b_in,
    s_in => g_in(2 DOWNTO 1),
    selected => input_selected
  );

  input_parser : input_parser PORT MAP(
    b => b_in,
    s_in => g_in(2 DOWNTO 1),
    y => input_parsed
  );

  ripple_adder : ripple_adder PORT MAP(
    a => a_in,
    b => input_parsed,
    c_in => g_in(0),
    s => ripple_adder_result,
    c_out => c,
    v_out => v
  );

  mux2_32bit : mux2_32bit PORT MAP(
    s => g_in(3),
    in1 => ripple_adder_result,
    in2 => input_selected,
    z => g_out
  );

END Behavior; -- Behavior