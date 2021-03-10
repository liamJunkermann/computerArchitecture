----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/01/2021 07:34:26 PM
-- Design Name: 
-- Module Name: microcoded_controller - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

ENTITY microcoded_controller IS
  PORT (
    reset : IN STD_LOGIC;
    Clk : IN STD_LOGIC;
    flags : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
    IR_in : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
    ir_dest : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    ir_src_a : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    ir_src_b : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    temp_dest : OUT STD_LOGIC;
    temp_a : OUT STD_LOGIC;
    temp_b : OUT STD_LOGIC;
    muxb_ctrl : OUT STD_LOGIC;
    muxd_ctrl : OUT STD_LOGIC;
    read_write : OUT STD_LOGIC;
    muxm_ctrl : OUT STD_LOGIC;
    MemWrite : OUT STD_LOGIC;
    flag_load : OUT STD_LOGIC;
    reset_flags : OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    func_sel : OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
    inst_addr : OUT STD_LOGIC_VECTOR (31 DOWNTO 0));
END microcoded_controller;

ARCHITECTURE Behavioral OF microcoded_controller IS
  COMPONENT program_counter
    PORT (
      prog_ld, prog_inc, Clk, reset : IN STD_LOGIC;
      ext_in : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
      inst_addr : OUT STD_LOGIC_VECTOR (31 DOWNTO 0));
  END COMPONENT;

  COMPONENT instruction_reg
    PORT (
      inst_ld, Clk : IN STD_LOGIC;
      instruction : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
      opcode : OUT STD_LOGIC_VECTOR (16 DOWNTO 0);
      dest_reg, src_a, src_b : OUT STD_LOGIC_VECTOR (4 DOWNTO 0));
  END COMPONENT;

  COMPONENT extend_reg
    PORT (
      dest_reg, source_b : IN STD_LOGIC_VECTOR (4 DOWNTO 0);
      extend_out : OUT STD_LOGIC_VECTOR (31 DOWNTO 0));
  END COMPONENT;

  COMPONENT mux2_17bit
    PORT (
      in_0 : IN STD_LOGIC_VECTOR (16 DOWNTO 0);
      in_1 : IN STD_LOGIC_VECTOR (16 DOWNTO 0);
      mux_ctrl : IN STD_LOGIC;
      mux_out : OUT STD_LOGIC_VECTOR (16 DOWNTO 0));
  END COMPONENT;

  COMPONENT mux7_1bit
    PORT (
      mux_ctrl : IN STD_LOGIC_VECTOR (2 DOWNTO 0);
      in_0, in_1, in_c, in_v, in_z, in_n, in_not_c, in_not_z : IN STD_LOGIC;
      mux_out : OUT STD_LOGIC);
  END COMPONENT;

  COMPONENT ctrl_addr_reg
    PORT (
      addr_in : IN STD_LOGIC_VECTOR (16 DOWNTO 0);
      mux_ctrl, Clk, reset : IN STD_LOGIC;
      addr_out : OUT STD_LOGIC_VECTOR (16 DOWNTO 0));
  END COMPONENT;

  COMPONENT ctrl_mem
    PORT (
      car_in : IN STD_LOGIC_VECTOR (16 DOWNTO 0);
      next_addr : OUT STD_LOGIC_VECTOR (16 DOWNTO 0);
      muxs_ctrl : OUT STD_LOGIC_VECTOR (2 DOWNTO 0);
      func_sel : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      muxc_ctrl, instruct_ld, pc_inc, pc_ld, temp_d, temp_a, temp_b, muxb_ctrl : OUT STD_LOGIC;
      muxd_ctrl, read_write, muxm_ctrl, mem_write, reset_v, reset_c, reset_n, reset_z, flag_load : OUT STD_LOGIC
    );
  END COMPONENT;

  SIGNAL next_addr, car_in, car_out, opcode : STD_LOGIC_VECTOR(16 DOWNTO 0);
  SIGNAL muxs_ctrl : STD_LOGIC_VECTOR(2 DOWNTO 0);
  SIGNAL muxc_ctrl, inst_ld, prog_ld, prog_inc, car_sel, not_c, not_z : STD_LOGIC;
  SIGNAL dest_reg, src_a, src_b : STD_LOGIC_VECTOR(4 DOWNTO 0);
  SIGNAL pc_offset : STD_LOGIC_VECTOR(31 DOWNTO 0);

BEGIN

  not_c <= flags(0);
  not_z <= flags(2);

  mux_s : mux7_1bit PORT MAP(
    mux_ctrl => muxs_ctrl,
    in_0 => '0',
    in_1 => '1',
    in_c => flags(0),
    in_v => flags(1),
    in_z => flags(2),
    in_n => flags(3),
    in_not_c => not_c,
    in_not_z => not_z,
    mux_out => car_sel
  );

  pc : program_counter PORT MAP(
    prog_ld => prog_ld,
    prog_inc => prog_inc,
    ext_in => pc_offset,
    Clk => Clk,
    reset => reset,
    inst_addr => inst_addr
  );

  extend : extend_reg PORT MAP(
    dest_reg => dest_reg,
    source_b => src_b,
    extend_out => pc_offset
  );

  IR : instruction_reg PORT MAP(
    inst_ld => inst_ld,
    Clk => Clk,
    instruction => IR_in,
    opcode => opcode,
    dest_reg => dest_reg,
    src_a => src_a,
    src_b => src_b
  );

  mux_c : mux2_17bit PORT MAP(
    in_0 => next_addr,
    in_1 => opcode,
    mux_ctrl => muxc_ctrl,
    mux_out => car_in
  );

  car : ctrl_addr_reg PORT MAP(
    addr_in => car_in,
    mux_ctrl => car_sel,
    Clk => Clk,
    reset => reset,
    addr_out => car_out
  );

  control_memory : ctrl_mem PORT MAP(
    car_in => car_out,
    next_addr => next_addr,
    muxs_ctrl => muxs_ctrl,
    func_sel => func_sel,
    muxc_ctrl => muxc_ctrl,
    instruct_ld => inst_ld,
    pc_inc => prog_inc,
    pc_ld => prog_ld,
    temp_d => temp_dest,
    temp_a => temp_a,
    temp_b => temp_b,
    muxb_ctrl => muxb_ctrl,
    muxd_ctrl => muxd_ctrl,
    read_write => read_write,
    muxm_ctrl => muxm_ctrl,
    mem_write => MemWrite,
    reset_v => reset_flags(0),
    reset_c => reset_flags(1),
    reset_n => reset_flags(2),
    reset_z => reset_flags(3),
    flag_load => flag_load
  );

  ir_dest <= dest_reg;
  ir_src_a <= src_a;
  ir_src_b <= src_b;

END Behavioral;