----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/28/2020 05:34:04 AM
-- Design Name: 
-- Module Name: input_parser_tb - Behavioral
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

ENTITY input_parser_tb IS
    --  Port ( );
END input_parser_tb;

ARCHITECTURE Behavioral OF input_parser_tb IS
    COMPONENT input_parser
        PORT (
            b : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
            s_in : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
            y : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
        );
    END COMPONENT;

    SIGNAL b : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
    SIGNAL s_in : STD_LOGIC_VECTOR(1 DOWNTO 0) := (OTHERS => '0');
    SIGNAL y : STD_LOGIC_VECTOR(31 DOWNTO 0);
BEGIN

    uut : input_parser PORT MAP(
        b => b,
        s_in => s_in,
        y => y
    );
    stim_proc : PROCESS
    BEGIN
        b <= x"AAAAAAAA";
        s_in <= "00";

        WAIT FOR 10ns;
        s_in <= "01";

        WAIT FOR 10ns;
        s_in <= "10";

        WAIT FOR 10ns;
        s_in <= "11";

        WAIT;
    END PROCESS;
END Behavioral;