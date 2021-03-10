LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_arith.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY datapath IS
  PORT (
    flag_reset : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    dest_reg, source_a, source_b, func_sel : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    temp_dest, temp_a, temp_b, muxb_ctrl, muxd_ctrl, read_write, muxm_ctrl, mem_write, flag_load, Clk : IN STD_LOGIC;
    instruction_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    instruction_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    flags : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
  );
END datapath;

ARCHITECTURE Behavioral OF datapath IS

  COMPONENT function_unit IS
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

  COMPONENT flag_reg IS
    PORT (
      v_in, c_in, n_in, z_in, flag_load, Clk : IN STD_LOGIC;
      reset : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      flag_out : OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
    );
  END COMPONENT;

  COMPONENT memory IS
    PORT (
      address : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      write_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      MemWrite : IN STD_LOGIC;
      read_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
  END COMPONENT;

  COMPONENT zero_fill IS
    PORT (
      sb_in : IN STD_LOGIC_VECTOR (4 DOWNTO 0);
      zero_fill_out : OUT STD_LOGIC_VECTOR (31 DOWNTO 0));
  END COMPONENT;

  SIGNAL a_bus, b_data, mem_out, func_out, d_bus, zero_fill_out, b_bus, muxm_out : STD_LOGIC_VECTOR(31 DOWNTO 0);
  SIGNAL func_v, func_c, func_n, func_z : STD_LOGIC;

  SIGNAL addr_a, addr_b, dest_d : STD_LOGIC_VECTOR(5 DOWNTO 0);
  SIGNAL inst_addr : unsigned(31 DOWNTO 0);

BEGIN

  addr_a <= temp_a & source_a;
  addr_b <= temp_b & source_b;
  dest_d <= temp_dest & dest_reg;
  register_file0 : register_file PORT MAP(
    Clk => Clk,
    load_enabled => read_write,
    addr_a => addr_a,
    addr_b => addr_b,
    dest_d => dest_d,
    data => d_bus,
    out_a => a_bus,
    out_b => b_data
  );

  mux_b : mux2_32bit PORT MAP(
    s => muxb_ctrl,
    in1 => zero_fill_out,
    in2 => b_data,
    z => b_bus
  );

  function_unit0 : function_unit PORT MAP(
    a_in => a_bus,
    b_in => b_bus,
    function_select => func_sel,
    v => func_v,
    c => func_c,
    n => func_n,
    z => func_z,
    f => func_out
  );

  mux_d : mux2_32bit PORT MAP(
    s => muxd_ctrl,
    in1 => func_out,
    in2 => mem_out,
    z => d_bus
  );

  mux_m : mux2_32bit PORT MAP(
    s => muxm_ctrl,
    in1 => a_bus,
    in2 => instruction_in,
    z => muxm_out
  );

  flag_reg0 : flag_reg PORT MAP(
    v_in => func_v,
    c_in => func_c,
    n_in => func_n,
    z_in => func_z,
    flag_load => flag_load,
    Clk => Clk,
    reset => flag_reset,
    flag_out => flags
  );

  zero_fill0 : zero_fill PORT MAP(
    sb_in => source_b,
    zero_fill_out => zero_fill_out
  );

  memory_m : memory PORT MAP(
    address => muxm_out,
    write_data => b_bus,
    MemWrite => mem_write,
    read_data => mem_out
  );
  instruction_out <= mem_out;

END Behavioral; -- Behavioral