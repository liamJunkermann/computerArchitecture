----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/02/2021 07:18:17 PM
-- Design Name: 
-- Module Name: ctrl_mem_tb - Behavioral
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

ENTITY ctrl_mem_tb IS
    --  Port ( );
END ctrl_mem_tb;

ARCHITECTURE Behavioral OF ctrl_mem_tb IS
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

    SIGNAL car_in, next_addr : STD_LOGIC_VECTOR(16 DOWNTO 0);
    SIGNAL muxs_ctrl : STD_LOGIC_VECTOR(2 DOWNTO 0);
    SIGNAL func_sel : STD_LOGIC_VECTOR(4 DOWNTO 0);
    SIGNAL muxc_ctrl, instruct_ld, pc_inc, pc_ld, temp_d, temp_a, temp_b, muxb_ctrl : STD_LOGIC;
    SIGNAL muxd_ctrl, read_write, muxm_ctrl, mem_write, reset_v, reset_c, reset_n, reset_z, flag_load : STD_LOGIC;

BEGIN

    uut : ctrl_mem PORT MAP(
        car_in => car_in,
        next_addr => next_addr,
        muxs_ctrl => muxs_ctrl,
        func_sel => func_sel,
        muxc_ctrl => muxc_ctrl,
        instruct_ld => instruct_ld,
        pc_inc => pc_inc,
        pc_ld => pc_ld,
        temp_d => temp_d,
        temp_a => temp_a,
        temp_b => temp_b,
        muxb_ctrl => muxb_ctrl,
        muxd_ctrl => muxd_ctrl,
        read_write => read_write,
        muxm_ctrl => muxm_ctrl,
        mem_write => mem_write,
        reset_v => reset_v,
        reset_c => reset_c,
        reset_n => reset_n,
        reset_z => reset_z,
        flag_load => flag_load
    );

    stim_proc: process
    begin
        car_in <= "00000000000000000";
        wait for 10ns;
        car_in <= "00000000000000001";
        wait for 10ns;
        car_in <= "00000000000000010";
        wait for 10ns;

        car_in <= "00000000000000011";
        wait for 10ns;

        car_in <= "00000000000000100";
        wait for 10ns;

        car_in <= "00000000000000101";
        wait for 10ns;

        car_in <= "00000000000000110";
        wait for 10ns;
    end process;

END Behavioral;