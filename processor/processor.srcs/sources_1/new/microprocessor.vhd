----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/02/2021 11:01:01 AM
-- Design Name: 
-- Module Name: microprocessor - Behavioral
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

ENTITY microprocessor IS
  PORT (
    Clk, reset : IN STD_LOGIC;
    pc_count : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    instruction : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
END microprocessor;

ARCHITECTURE Behavioral OF microprocessor IS
  COMPONENT datapath
    PORT (
      flag_reset : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      dest_reg, source_a, source_b, func_sel : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      temp_dest, temp_a, temp_b, muxb_ctrl, muxd_ctrl, read_write, muxm_ctrl, mem_write, flag_load, Clk : IN STD_LOGIC;
      instruction_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      instruction_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      flags : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
  END COMPONENT;

  COMPONENT microcoded_controller
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
  END COMPONENT;

  SIGNAL temp_dest, temp_a, temp_b, muxb_ctrl, muxd_ctrl, read_write, muxm_ctrl, mem_write, flag_load : STD_LOGIC;
  SIGNAL dest_reg, source_a, source_b, func_sel : STD_LOGIC_VECTOR(4 DOWNTO 0);
  SIGNAL inst_addr, instruct : STD_LOGIC_VECTOR(31 DOWNTO 0);
  SIGNAL flags, flag_reset : STD_LOGIC_VECTOR(3 DOWNTO 0);

BEGIN

  datapath0 : datapath PORT MAP(
    Clk => Clk,
    flag_reset => flag_reset,
    dest_reg => dest_reg,
    source_a => source_a,
    source_b => source_b,
    func_sel => func_sel,
    temp_dest => temp_dest,
    temp_a => temp_a,
    temp_b => temp_b,
    muxb_ctrl => muxb_ctrl,
    muxd_ctrl => muxd_ctrl,
    read_write => read_write,
    muxm_ctrl => muxm_ctrl,
    mem_write => mem_write,
    flag_load => flag_load,
    instruction_in => inst_addr,
    instruction_out => instruct,
    flags => flags
  );

  ctrl_path : microcoded_controller PORT MAP(
    reset => reset,
    Clk => Clk,
    flags => flags,
    IR_in => instruct,
    ir_dest => dest_reg,
    ir_src_a => source_a,
    ir_src_b => source_b,
    temp_dest => temp_dest,
    temp_a => temp_a,
    temp_b => temp_b,
    muxb_ctrl => muxb_ctrl,
    muxd_ctrl => muxd_ctrl,
    read_write => read_write,
    muxm_ctrl => muxm_ctrl,
    MemWrite => mem_write,
    flag_load => flag_load,
    reset_flags => flag_reset,
    func_sel => func_sel,
    inst_addr => inst_addr
  );

  instruction <= instruct;
  pc_count <= inst_addr;

END Behavioral;