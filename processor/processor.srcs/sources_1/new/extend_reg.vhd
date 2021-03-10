----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/01/2021 03:37:18 PM
-- Design Name: 
-- Module Name: extend_reg - Behavioral
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

ENTITY extend_reg IS
    PORT (
        dest_reg, source_b : IN STD_LOGIC_VECTOR (4 DOWNTO 0);
        extend_out : OUT STD_LOGIC_VECTOR (31 DOWNTO 0));
END extend_reg;

ARCHITECTURE Behavioral OF extend_reg IS

BEGIN

    PROCESS (dest_reg, source_b)
    BEGIN
        CASE(dest_reg(4)) IS
            WHEN '0' => extend_out(31 DOWNTO 10) <= "0000000000000000000000";
            WHEN '1' => extend_out(31 DOWNTO 10) <= "1000000000000000000000";
            WHEN OTHERS => extend_out(31 DOWNTO 10) <= "0000000000000000000000";
        END CASE;
        extend_out(9 DOWNTO 5) <= dest_reg;
        extend_out(4 DOWNTO 0) <= source_b;
    END PROCESS;
END Behavioral;