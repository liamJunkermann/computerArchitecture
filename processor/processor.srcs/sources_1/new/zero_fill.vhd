----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/31/2020 01:58:28 PM
-- Design Name: 
-- Module Name: zero_fill - Behavioral
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

ENTITY zero_fill IS
    PORT (
        sb_in : IN STD_LOGIC_VECTOR (4 DOWNTO 0);
        Clk : IN STD_LOGIC;
        zero_fill_out : OUT STD_LOGIC_VECTOR (31 DOWNTO 0));
END zero_fill;

ARCHITECTURE Behavioral OF zero_fill IS
BEGIN
    PROCESS (Clk)
    BEGIN
        IF (rising_edge(Clk)) THEN
            zero_fill_out(31 DOWNTO 4) <= "0000000000000000000000000000";
            zero_fill_out(4 DOWNTO 0) <= sb_in;
        END IF;
    END PROCESS;
END Behavioral;