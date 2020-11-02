----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/01/2020 02:58:58 PM
-- Design Name: 
-- Module Name: decoder_mux - Behavioral
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


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity decoder_mux is port(
    wr_index: in std_logic_vector(4 downto 0);
    q0: out std_logic;   
    q1: out std_logic;   
    q2: out std_logic;   
    q3: out std_logic;   
    q4: out std_logic;   
    q5: out std_logic;   
    q6: out std_logic;   
    q7: out std_logic;   
    q8: out std_logic;   
    q9: out std_logic;   
    q10: out std_logic;   
    q11: out std_logic;   
    q12: out std_logic;   
    q13: out std_logic;   
    q14: out std_logic;   
    q15: out std_logic;   
    q16: out std_logic;   
    q17: out std_logic;   
    q18: out std_logic;   
    q19: out std_logic;   
    q20: out std_logic;   
    q21: out std_logic;   
    q22: out std_logic;   
    q23: out std_logic;   
    q24: out std_logic;   
    q25: out std_logic;   
    q26: out std_logic;   
    q27: out std_logic;   
    q28: out std_logic;   
    q29: out std_logic;   
    q30: out std_logic;   
    q31: out std_logic
);
end decoder_mux;

architecture Behavioral of decoder_mux is
begin
    process(wr_index)
    begin
        q0 <= '0';   
        q1 <= '0';   
        q2 <= '0';   
        q3 <= '0';   
        q4 <= '0';   
        q5 <= '0';   
        q6 <= '0';   
        q7 <= '0';   
        q8 <= '0';   
        q9 <= '0';   
        q10 <= '0';   
        q11 <= '0';   
        q12 <= '0';   
        q13 <= '0';   
        q14 <= '0';   
        q15 <= '0';   
        q16 <= '0';   
        q17 <= '0';   
        q18 <= '0';   
        q19 <= '0';   
        q20 <= '0';   
        q21 <= '0';   
        q22 <= '0';   
        q23 <= '0';   
        q24 <= '0';   
        q25 <= '0';   
        q26 <= '0';   
        q27 <= '0';   
        q28 <= '0';   
        q29 <= '0';   
        q30 <= '0';   
        q31 <= '0';
        case wr_index is
            when "00000" => q0 <= '1';
            when "00001" => q1 <= '1';
            when "00010" => q2 <= '1';
            when "00011" => q3 <= '1';
            when "00100" => q4 <= '1';
            when "00101" => q5 <= '1';
            when "00110" => q6 <= '1';
            when "00111" => q7 <= '1';
            when "01000" => q8 <= '1';
            when "01001" => q9 <= '1';
            when "01010" => q10 <= '1';
            when "01011" => q11 <= '1';
            when "01100" => q12 <= '1';
            when "01101" => q13 <= '1';
            when "01110" => q14 <= '1';
            when "01111" => q15 <= '1';
            when "10000" => q16 <= '1';
            when "10001" => q17 <= '1';
            when "10010" => q18 <= '1';
            when "10011" => q19 <= '1';
            when "10100" => q20 <= '1';
            when "10101" => q21 <= '1';
            when "10110" => q22 <= '1';
            when "10111" => q23 <= '1';
            when "11000" => q24 <= '1';
            when "11001" => q25 <= '1';
            when "11010" => q26 <= '1';
            when "11011" => q27 <= '1';
            when "11100" => q28 <= '1';
            when "11101" => q29 <= '1';
            when "11110" => q30 <= '1';
            when "11111" => q31 <= '1';
        end case;
    end process;
end Behavioral;
