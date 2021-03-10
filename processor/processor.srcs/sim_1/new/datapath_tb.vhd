----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/31/2020 03:56:31 PM
-- Design Name: 
-- Module Name: datapath_tb - Behavioral
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

ENTITY datapath_tb IS
    --  Port ( );
END datapath_tb;

ARCHITECTURE Behavioral OF datapath_tb IS
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

    SIGNAL flag_reset, flags : STD_LOGIC_VECTOR(3 DOWNTO 0);
    SIGNAL dest_reg, source_a, source_b, func_sel : STD_LOGIC_VECTOR(4 DOWNTO 0);
    SIGNAL temp_dest, temp_a, temp_b, muxb_ctrl, muxd_ctrl, read_write, muxm_ctrl, mem_write, flag_load, Clk : STD_LOGIC;
    SIGNAL instruction_in, instruction_out : STD_LOGIC_VECTOR(31 DOWNTO 0);
BEGIN

    uut : datapath PORT MAP(
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
        Clk => Clk,
        instruction_in => instruction_in,
        instruction_out => instruction_out,
        flags => flags
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
        flag_reset <= "0000";
        dest_reg <= "00001";
        source_a <= "00001";
        source_b <= "00001";
        temp_dest <= '0';
        temp_a <= '0';
        temp_b <= '1';
        muxb_ctrl <= '1';
        func_sel <= "00010";
        muxd_ctrl <= '0';
        read_write <= '1';
        muxm_ctrl <= '0';
        mem_write <= '0';
        flag_load <= '1';
        instruction_in <= "00000000000000000000000000000000";
        WAIT FOR 20ns;
        flag_reset <= "1111";
        dest_reg <= "00001";
        source_a <= "00001";
        source_b <= "00001";
        temp_dest <= '0';
        temp_a <= '0';
        temp_b <= '0';
        muxb_ctrl <= '0';
        func_sel <= "00010";
        muxd_ctrl <= '0';
        read_write <= '1';
        muxm_ctrl <= '0';
        mem_write <= '0';
        flag_load <= '0';
        instruction_in <= "00000000000000000000000000000001";
        WAIT FOR 20ns;
    END PROCESS;

END Behavioral;