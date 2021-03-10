----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/02/2021 07:18:17 PM
-- Design Name: 
-- Module Name: ctrl_addr_reg_tb - Behavioral
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

ENTITY ctrl_addr_reg_tb IS
    --  Port ( );
END ctrl_addr_reg_tb;

ARCHITECTURE Behavioral OF ctrl_addr_reg_tb IS
    COMPONENT ctrl_addr_reg
        PORT (
            addr_in : IN STD_LOGIC_VECTOR (16 DOWNTO 0);
            mux_ctrl, Clk, reset : IN STD_LOGIC;
            addr_out : OUT STD_LOGIC_VECTOR (16 DOWNTO 0));
    END COMPONENT;

    SIGNAL addr_in, addr_out : STD_LOGIC_VECTOR(16 DOWNTO 0);
    SIGNAL mux_ctrl, Clk, reset : STD_LOGIC;
BEGIN

    uut : ctrl_addr_reg PORT MAP(
        addr_in => addr_in,
        mux_ctrl => mux_ctrl,
        Clk => Clk,
        reset => reset,
        addr_out => addr_out
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
        mux_ctrl <= '0';
        addr_in <= "00000000000000000";
        WAIT FOR 5ns;
        reset <= '0';
        WAIT FOR 5ns;
        mux_ctrl <= '1';
        WAIT FOR 10ns;
        mux_ctrl <= '0';
        WAIT FOR 10ns;
        addr_in <= "00000000000000001";
        mux_ctrl <= '1';
        WAIT FOR 10ns;
        mux_ctrl <= '0';
        WAIT FOR 40ns;
        mux_ctrl <= '1';

        WAIT;

    END PROCESS;

END Behavioral;