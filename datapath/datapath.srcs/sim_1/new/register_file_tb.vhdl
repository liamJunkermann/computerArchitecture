----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Design Name: 
-- Module Name: register_file_tb - Behavioral
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

ENTITY register_file_tb IS
    --  Port ( );
END register_file_tb;

ARCHITECTURE Behavioral OF register_file_tb IS
    COMPONENT register_file
        PORT (
            Clk, load_enabled : IN STD_LOGIC;
            addr_a, addr_b, dest_d : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
            data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
            out_a, out_b : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
        );
    END COMPONENT;

    SIGNAL Clk, load_enabled : STD_LOGIC;
    SIGNAL addr_a, addr_b, dest_d : STD_LOGIC_VECTOR(5 DOWNTO 0);
    SIGNAL data, out_a, out_b : STD_LOGIC_VECTOR(31 DOWNTO 0);
BEGIN

    uut : register_file PORT MAP(
        Clk => Clk,
        load_enabled => load_enabled,
        addr_a => addr_a,
        addr_b => addr_b,
        dest_d => dest_d,
        data => data,
        out_a => out_a,
        out_b => out_b
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

        load_enabled <= '1';

        dest_d <= "000000";
        data <= "00000001001001100111111100101101";

        WAIT FOR 10 ns;
        dest_d <= "000001";
        data <= "00000001001001100111111100101100";

        WAIT FOR 10 ns;
        dest_d <= "000010";
        data <= "00000001001001100111111100101011";

        WAIT FOR 10 ns;
        dest_d <= "000011";
        data <= "00000001001001100111111100101010";

        WAIT FOR 10 ns;
        dest_d <= "000100";
        data <= "00000001001001100111111100101001";

        WAIT FOR 10 ns;
        dest_d <= "000101";
        data <= "00000001001001100111111100101000";

        WAIT FOR 10 ns;
        dest_d <= "000110";
        data <= "00000001001001100111111100100111";

        WAIT FOR 10 ns;
        dest_d <= "000111";
        data <= "00000001001001100111111100100110";

        WAIT FOR 10 ns;
        dest_d <= "001000";
        data <= "00000001001001100111111100100101";

        WAIT FOR 10 ns;
        dest_d <= "001001";
        data <= "00000001001001100111111100100100";

        WAIT FOR 10 ns;
        dest_d <= "001010";
        data <= "00000001001001100111111100100011";

        WAIT FOR 10 ns;
        dest_d <= "001011";
        data <= "00000001001001100111111100100010";

        WAIT FOR 10 ns;
        dest_d <= "001100";
        data <= "00000001001001100111111100100001";

        WAIT FOR 10 ns;
        dest_d <= "001101";
        data <= "00000001001001100111111100100000";

        WAIT FOR 10 ns;
        dest_d <= "001110";
        data <= "00000001001001100111111100011111";

        WAIT FOR 10 ns;
        dest_d <= "001111";
        data <= "00000001001001100111111100011110";

        WAIT FOR 10 ns;
        dest_d <= "010000";
        data <= "00000001001001100111111100011101";

        WAIT FOR 10 ns;
        dest_d <= "010001";
        data <= "00000001001001100111111100011100";

        WAIT FOR 10 ns;
        dest_d <= "010010";
        data <= "00000001001001100111111100011011";

        WAIT FOR 10 ns;
        dest_d <= "010011";
        data <= "00000001001001100111111100011010";

        WAIT FOR 10 ns;
        dest_d <= "010100";
        data <= "00000001001001100111111100011001";

        WAIT FOR 10 ns;
        dest_d <= "010101";
        data <= "00000001001001100111111100011000";

        WAIT FOR 10 ns;
        dest_d <= "010110";
        data <= "00000001001001100111111100010111";

        WAIT FOR 10 ns;
        dest_d <= "010111";
        data <= "00000001001001100111111100010110";

        WAIT FOR 10 ns;
        dest_d <= "011000";
        data <= "00000001001001100111111100010101";

        WAIT FOR 10 ns;
        dest_d <= "011001";
        data <= "00000001001001100111111100010100";

        WAIT FOR 10 ns;
        dest_d <= "011010";
        data <= "00000001001001100111111100010011";

        WAIT FOR 10 ns;
        dest_d <= "011011";
        data <= "00000001001001100111111100010010";

        WAIT FOR 10 ns;
        dest_d <= "011100";
        data <= "00000001001001100111111100010001";

        WAIT FOR 10 ns;
        dest_d <= "011101";
        data <= "00000001001001100111111100010000";

        WAIT FOR 10 ns;
        dest_d <= "011110";
        data <= "00000001001001100111111100001111";

        WAIT FOR 10 ns;
        dest_d <= "011111";
        data <= "00000001001001100111111100001110";
        WAIT FOR 10 ns;
        addr_a <= "000000";
        addr_b <= "100000";

        WAIT FOR 10 ns;
        addr_a <= "000001";
        addr_b <= "011111";

        WAIT FOR 10 ns;
        addr_a <= "000010";
        addr_b <= "011110";

        WAIT FOR 10 ns;
        addr_a <= "000011";
        addr_b <= "011101";

        WAIT FOR 10 ns;
        addr_a <= "000100";
        addr_b <= "011100";

        WAIT FOR 10 ns;
        addr_a <= "000101";
        addr_b <= "011011";

        WAIT FOR 10 ns;
        addr_a <= "000110";
        addr_b <= "011010";

        WAIT FOR 10 ns;
        addr_a <= "000111";
        addr_b <= "011001";

        WAIT FOR 10 ns;
        addr_a <= "001000";
        addr_b <= "011000";

        WAIT FOR 10 ns;
        addr_a <= "001001";
        addr_b <= "010111";

        WAIT FOR 10 ns;
        addr_a <= "001010";
        addr_b <= "010110";

        WAIT FOR 10 ns;
        addr_a <= "001011";
        addr_b <= "010101";

        WAIT FOR 10 ns;
        addr_a <= "001100";
        addr_b <= "010100";

        WAIT FOR 10 ns;
        addr_a <= "001101";
        addr_b <= "010011";

        WAIT FOR 10 ns;
        addr_a <= "001110";
        addr_b <= "010010";

        WAIT FOR 10 ns;
        addr_a <= "001111";
        addr_b <= "010001";
    END PROCESS;

END Behavioral;