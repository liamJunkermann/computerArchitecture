----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/02/2021 07:18:17 PM
-- Design Name: 
-- Module Name: mux2_17bit_tb - Behavioral
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

ENTITY mux2_17bit_tb IS
    --  Port ( );
END mux2_17bit_tb;

ARCHITECTURE Behavioral OF mux2_17bit_tb IS
    COMPONENT mux2_17bit
        PORT (
            in_0 : IN STD_LOGIC_VECTOR (16 DOWNTO 0);
            in_1 : IN STD_LOGIC_VECTOR (16 DOWNTO 0);
            mux_ctrl : IN STD_LOGIC;
            mux_out : OUT STD_LOGIC_VECTOR (16 DOWNTO 0));
    END COMPONENT;
    SIGNAL in_0, in_1, mux_out : STD_LOGIC_VECTOR(16 DOWNTO 0);
    SIGNAL mux_ctrl : STD_LOGIC;
BEGIN
    uut : mux2_17bit PORT MAP(
        in_0 => in_0,
        in_1 => in_1,
        mux_ctrl => mux_ctrl,
        mux_out => mux_out
    );
    stim_proc : PROCESS
    BEGIN
        in_0 <= "00000000000000000";
        in_1 <= "00000000000000001";
        mux_ctrl <= '0';
        WAIT FOR 10ns;
        mux_ctrl <= '1';
        WAIT FOR 10ns;
    END PROCESS;
END Behavioral;