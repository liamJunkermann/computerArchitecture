----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Design Name: 
-- Module Name: alu_tb - Behavioral
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

ENTITY alu_tb IS
    --  Port ( );
END alu_tb;

ARCHITECTURE Behavioral OF alu_tb IS
    COMPONENT alu
        PORT (
            a_in, b_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
            g_in : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
            v, c : OUT STD_LOGIC;
            g_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
        );
    END COMPONENT;

    SIGNAL a_in, b_in, g_out : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL g_in : STD_LOGIC_VECTOR(3 DOWNTO 0);
    SIGNAL v, c : STD_LOGIC;
BEGIN

    uut : alu PORT MAP(
        a_in => a_in,
        b_in => b_in,
        g_in => g_in,
        v => v,
        c => c,
        g_out => g_out
    );

    stim_proc : PROCESS
    BEGIN
        a_in <= x"FFAAFFAA";
        b_in <= x"0000000F";
        g_in <= "0000";

        WAIT FOR 50ns;
        g_in <= "0000";

        WAIT FOR 50ns;
        g_in <= "0001";

        WAIT FOR 50ns;
        g_in <= "0010";

        WAIT FOR 50ns;
        g_in <= "0011";

        WAIT FOR 50ns;
        g_in <= "0100";

        WAIT FOR 50ns;
        g_in <= "0101";

        WAIT FOR 50ns;
        g_in <= "0110";

        WAIT FOR 50ns;
        g_in <= "0111";

        WAIT FOR 50ns;
        g_in <= "1000";

        WAIT FOR 50ns;
        g_in <= "1001";

        WAIT FOR 50ns;
        g_in <= "1010";

        WAIT FOR 50ns;
        g_in <= "1011";

        WAIT FOR 50ns;
        g_in <= "1100";

        WAIT FOR 50ns;
        g_in <= "1101";

        WAIT FOR 50ns;
        g_in <= "1110";

        WAIT FOR 50ns;
        g_in <= "1111";
    END PROCESS;
END Behavioral;