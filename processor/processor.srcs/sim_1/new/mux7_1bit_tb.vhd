----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/02/2021 07:18:17 PM
-- Design Name: 
-- Module Name: mux7_1bit_tb - Behavioral
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

ENTITY mux7_1bit_tb IS
    --  Port ( );
END mux7_1bit_tb;

ARCHITECTURE Behavioral OF mux7_1bit_tb IS
    COMPONENT mux7_1bit
        PORT (
            mux_ctrl : IN STD_LOGIC_VECTOR (2 DOWNTO 0);
            in_0, in_1, in_c, in_v, in_z, in_n, in_not_c, in_not_z : IN STD_LOGIC;
            mux_out : OUT STD_LOGIC);
    END COMPONENT;
    SIGNAL mux_ctrl : STD_LOGIC_VECTOR(2 DOWNTO 0);
    SIGNAL in_0, in_1, in_c, in_v, in_z, in_n, in_not_c, in_not_z, mux_out : STD_LOGIC;
BEGIN

    uut : mux7_1bit PORT MAP(
        mux_ctrl => mux_ctrl,
        in_0 => in_0,
        in_1 => in_1,
        in_c => in_c,
        in_v => in_v,
        in_z => in_z,
        in_n => in_n,
        in_not_c => in_not_c,
        in_not_z => in_not_z,
        mux_out => mux_out
    );

    stim_proc : PROCESS
    BEGIN
        mux_ctrl <= "000";
        in_0 <= '0';
        in_1 <= '0';
        in_c <= '1';
        in_v <= '1';
        in_z <= '0';
        in_n <= '0';
        in_not_c <= '0';
        in_not_z <= '0';
        WAIT FOR 10ns;

        mux_ctrl <= "001";
        WAIT FOR 10ns;
        mux_ctrl <= "010";
        WAIT FOR 10ns;

        mux_ctrl <= "011";
        WAIT FOR 10ns;

        mux_ctrl <= "100";
        WAIT FOR 10ns;

        mux_ctrl <= "101";
        WAIT FOR 10ns;

        mux_ctrl <= "110";
        WAIT FOR 10ns;

        mux_ctrl <= "111";
        WAIT FOR 10ns;

    END PROCESS;
END Behavioral;