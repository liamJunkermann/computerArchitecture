----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/01/2020 03:00:41 PM
-- Design Name: 
-- Module Name: mux32_32bit - Behavioral
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

entity mux32_32bit is port(
    src: in std_logic_vector(4 to 0);
    in0:    in std_logic_vector(31 to 0);
    in1:    in std_logic_vector(31 to 0);
    in2:    in std_logic_vector(31 to 0);
    in3:    in std_logic_vector(31 to 0);
    in4:    in std_logic_vector(31 to 0);
    in5:    in std_logic_vector(31 to 0);
    in6:    in std_logic_vector(31 to 0);
    in7:    in std_logic_vector(31 to 0);
    in8:    in std_logic_vector(31 to 0);
    in9:    in std_logic_vector(31 to 0);
    in10:   in std_logic_vector(31 to 0);
    in11:   in std_logic_vector(31 to 0);
    in12:   in std_logic_vector(31 to 0);
    in13:   in std_logic_vector(31 to 0);
    in14:   in std_logic_vector(31 to 0);
    in15:   in std_logic_vector(31 to 0);
    in16:   in std_logic_vector(31 to 0);
    in17:   in std_logic_vector(31 to 0);
    in18:   in std_logic_vector(31 to 0);
    in19:   in std_logic_vector(31 to 0);
    in20:   in std_logic_vector(31 to 0);
    in21:   in std_logic_vector(31 to 0);
    in22:   in std_logic_vector(31 to 0);
    in23:   in std_logic_vector(31 to 0);
    in24:   in std_logic_vector(31 to 0);
    in25:   in std_logic_vector(31 to 0);
    in26:   in std_logic_vector(31 to 0);
    in27:   in std_logic_vector(31 to 0);
    in28:   in std_logic_vector(31 to 0);
    in29:   in std_logic_vector(31 to 0);
    in30:   in std_logic_vector(31 to 0);
    in31:   in std_logic_vector(31 to 0);
    z: out std_logic_vector(31 to 0)
);
end mux32_32bit;

architecture Behavioral of mux32_32bit is
begin
    process(src
    ,in0 ,in1
    ,in2 ,in3
    ,in4 ,in5
    ,in6 ,in7
    ,in8 ,in9
    ,in10 ,in11
    ,in12 ,in13
    ,in14 ,in15
    ,in16 ,in17
    ,in18 ,in19
    ,in20 ,in21
    ,in22 ,in23
    ,in24 ,in25
    ,in26 ,in27
    ,in28 ,in29
    ,in30 ,in31 )
    begin
        case src is
            when "00000" => z <= in0;
            when "00001" => z <= in1;
            when "00010" => z <= in2;
            when "00011" => z <= in3;
            when "00100" => z <= in4;
            when "00101" => z <= in5;
            when "00110" => z <= in6;
            when "00111" => z <= in7;
            when "01000" => z <= in8;
            when "01001" => z <= in9;
            when "01010" => z <= in10;
            when "01011" => z <= in11;
            when "01100" => z <= in12;
            when "01101" => z <= in13;
            when "01110" => z <= in14;
            when "01111" => z <= in15;
            when "10000" => z <= in16;
            when "10001" => z <= in17;
            when "10010" => z <= in18;
            when "10011" => z <= in19;
            when "10100" => z <= in20;
            when "10101" => z <= in21;
            when "10110" => z <= in22;
            when "10111" => z <= in23;
            when "11000" => z <= in24;
            when "11001" => z <= in25;
            when "11010" => z <= in26;
            when "11011" => z <= in27;
            when "11100" => z <= in28;
            when "11101" => z <= in29;
            when "11110" => z <= in30;
            when "11111" => z <= in31;
        end case;
    end process;
end Behavioral;
