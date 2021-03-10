----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/02/2021 07:18:17 PM
-- Design Name: 
-- Module Name: microcoded_control_tb - Behavioral
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

ENTITY microcoded_control_tb IS
    --  Port ( );
END microcoded_control_tb;

ARCHITECTURE Behavioral OF microcoded_control_tb IS
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
    SIGNAL reset : STD_LOGIC;
    SIGNAL Clk : STD_LOGIC;
    SIGNAL flags : STD_LOGIC_VECTOR (3 DOWNTO 0);
    SIGNAL IR_in : STD_LOGIC_VECTOR (31 DOWNTO 0);
    SIGNAL ir_dest : STD_LOGIC_VECTOR(4 DOWNTO 0);
    SIGNAL ir_src_a : STD_LOGIC_VECTOR(4 DOWNTO 0);
    SIGNAL ir_src_b : STD_LOGIC_VECTOR(4 DOWNTO 0);
    SIGNAL temp_dest : STD_LOGIC;
    SIGNAL temp_a : STD_LOGIC;
    SIGNAL temp_b : STD_LOGIC;
    SIGNAL muxb_ctrl : STD_LOGIC;
    SIGNAL muxd_ctrl : STD_LOGIC;
    SIGNAL read_write : STD_LOGIC;
    SIGNAL muxm_ctrl : STD_LOGIC;
    SIGNAL MemWrite : STD_LOGIC;
    SIGNAL flag_load : STD_LOGIC;
    SIGNAL reset_flags : STD_LOGIC_VECTOR (3 DOWNTO 0);
    SIGNAL func_sel : STD_LOGIC_VECTOR (4 DOWNTO 0);
    SIGNAL inst_addr : STD_LOGIC_VECTOR (31 DOWNTO 0);
BEGIN

    uut : microcoded_controller PORT MAP(
        reset => reset,
        Clk => Clk,
        flags => flags,
        IR_in => IR_in,
        ir_dest => ir_dest,
        ir_src_a => ir_src_a,
        ir_src_b => ir_src_b,
        temp_dest => temp_dest,
        temp_a => temp_a,
        temp_b => temp_b,
        muxb_ctrl => muxb_ctrl,
        muxd_ctrl => muxd_ctrl,
        read_write => read_write,
        muxm_ctrl => muxm_ctrl,
        MemWrite => MemWrite,
        flag_load => flag_load,
        reset_flags => reset_flags,
        func_sel => func_sel,
        inst_addr => inst_addr
    );

    Clk_proc : PROCESS
    BEGIN
        Clk <= '0';
        WAIT FOR 5ns;
        Clk <= '1';
        WAIT FOR 5ns;
    END PROCESS;

    stim_proc : PROCESS
    BEGIN
        reset <= '1';
        flags <= "0000";
        IR_in <= "00000000000000000000000000000000";
        WAIT FOR 5ns;
        reset <= '0';
        WAIT FOR 5ns;
        IR_in <= "00000000000000001000010000100001";
        WAIT FOR 10ns;

    END PROCESS;
END Behavioral;