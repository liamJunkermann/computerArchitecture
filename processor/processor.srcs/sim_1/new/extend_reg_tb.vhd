----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/02/2021 07:18:17 PM
-- Design Name: 
-- Module Name: extend_reg_tb - Behavioral
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

ENTITY extend_reg_tb IS
    --  Port ( );
END extend_reg_tb;

ARCHITECTURE Behavioral OF extend_reg_tb IS
    COMPONENT extend_reg
        PORT (
            dest_reg, source_b : IN STD_LOGIC_VECTOR (4 DOWNTO 0);
            extend_out : OUT STD_LOGIC_VECTOR (31 DOWNTO 0));
    END COMPONENT;
    SIGNAL dest_reg, source_b : STD_LOGIC_VECTOR(4 DOWNTO 0);
    SIGNAL extend_out : STD_LOGIC_VECTOR(31 downto 0);

BEGIN

    uut : extend_reg PORT MAP(
        dest_reg => dest_reg,
        source_b => source_b,
        extend_out => extend_out
    );

    stim_proc : PROCESS
    BEGIN
        dest_reg <= "00000";
        source_b <= "00000";
        WAIT FOR 10ns;

        dest_reg <= "10000";
        source_b <= "00000";
        WAIT FOR 10ns;

        dest_reg <= "01111";
        source_b <= "00000";
        WAIT FOR 10ns;

        dest_reg <= "00000";
        source_b <= "11111";
        WAIT FOR 10ns;

    END PROCESS;
END Behavioral;