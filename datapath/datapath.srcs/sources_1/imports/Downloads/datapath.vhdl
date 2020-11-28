library IEEE;
use IEEE.std_logic_1164.all;

ENTITY datapath IS
  PORT (
    data_in, constant_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    control : IN STD_LOGIC_VECTOR(22 DOWNTO 0);
    Clk : IN STD_LOGIC;
    address_out, data_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    v, c, n, z : OUT STD_LOGIC
  );
END datapath;

ARCHITECTURE Behavioral OF datapath IS

  COMPONENT functional_unit IS
    PORT (
      a_in, b_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      function_select : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      v, c, n, z : OUT STD_LOGIC;
      f : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
  END COMPONENT;

  COMPONENT register_file IS
    PORT (
      Clk, load_enabled : IN STD_LOGIC;
      addr_a, addr_b, dest_d : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
      data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      out_a, out_b : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
  END COMPONENT;

  COMPONENT mux2_32bit IS
    PORT (
      s : IN STD_LOGIC;
      in1 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      in2 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      z : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
  END COMPONENT;

  SIGNAL a_data, b_data, choice, func_out, d_bus : STD_LOGIC_VECTOR(31 DOWNTO 0);

BEGIN

  register_file0 : register_file PORT MAP(
    Clk => Clk,
    load_enabled => control(0),
    addr_a => control(17 DOWNTO 13),
    addr_b => control(12 DOWNTO 8),
    dest_d => control(22 DOWNTO 18),
    data => d_bus,
    out_a => a_data,
    out_b => b_data
  );

  mux2_32bit0 : mux2_32bit PORT MAP(
    s => control(7),
    in1 => constant_in,
    in2 => b_data,
    z => choice
  );

  function_unit0 : functional_unit PORT MAP(
    a_in => a_data,
    b_in => choice,
    function_select => control(6 DOWNTO 2),
    v => v,
    c => c,
    n => n,
    z => z,
    f => func_out
  );

  mux2_32bit1 : mux2_32bit PORT MAP(
    s => control(1),
    in1 => func_out,
    in2 => data_in,
    z => d_bus
  );

  address_out <= a_data;
  data_out <= choice;

END Behavioral; -- Behavioral