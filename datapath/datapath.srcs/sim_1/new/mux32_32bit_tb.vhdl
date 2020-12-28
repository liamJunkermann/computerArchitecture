----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Design Name: 
-- Module Name: mux32_32bit_tb - Behavioral
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

entity mux32_32bit_tb is
--  Port ( );
end mux32_32bit_tb;

architecture Behavioral of mux32_32bit_tb is
    component mux32_32bit
        PORT (
    s : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    in0 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in1 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in2 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in3 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in4 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in5 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in6 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in7 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in8 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in9 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in10 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in11 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in12 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in13 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in14 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in15 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in16 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in17 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in18 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in19 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in20 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in21 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in22 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in23 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in24 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in25 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in26 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in27 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in28 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in29 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in30 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in31 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    z: OUT STD_LOGIC_VECTOR(31 downto 0)
  );
  end component;
  
  signal s: std_logic_vector(5 downto 0);
  signal in0, in1, in2, in3, in4, in5, in6, in7, in8, in9, in10, in11, in12, in13, in14, in15, in16, in17, in18, in19, in20, in21, in22, in23, in24, in25, in26, in27, in28, in29, in30, in31, z : std_logic_vector(31 downto 0);
  
begin
    uut: mux32_32bit port map(
    s => s,
   in0 => in0,
in1 => in1,
in2 => in2,
in3 => in3,
in4 => in4,
in5 => in5,
in6 => in6,
in7 => in7,
in8 => in8,
in9 => in9,
in10 => in10,
in11 => in11,
in12 => in12,
in13 => in13,
in14 => in14,
in15 => in15,
in16 => in16,
in17 => in17,
in18 => in18,
in19 => in19,
in20 => in20,
in21 => in21,
in22 => in22,
in23 => in23,
in24 => in24,
in25 => in25,
in26 => in26,
in27 => in27,
in28 => in28,
in29 => in29,
in30 => in30,
in31 => in31,
z =>z
    );
    
    stim_proc: process
    begin
    wait for 10ns;
    in0 <= "00000000000000000000000000000000";
    in1 <= "00000000000000000000000000000001";
    in2 <= "00000000000000000000000000000010";
    in3 <= "00000000000000000000000000000011";
    in4 <= "00000000000000000000000000000100";
    in5 <= "00000000000000000000000000000101";
    in6 <= "00000000000000000000000000000110";
    in7 <= "00000000000000000000000000000111";
    in8 <= "00000000000000000000000000001000";
    in9 <= "00000000000000000000000000001001";
    in10 <= "00000000000000000000000000001010";
    in11 <= "00000000000000000000000000001011";
    in12 <= "00000000000000000000000000001100";
    in13 <= "00000000000000000000000000001101";
    in14 <= "00000000000000000000000000001110";
    in15 <= "00000000000000000000000000001111";
    in16 <= "00000000000000000000000000010000";
    in17 <= "00000000000000000000000000010001";
    in18 <= "00000000000000000000000000010010";
    in19 <= "00000000000000000000000000010011";
    in20 <= "00000000000000000000000000010100";
    in21 <= "00000000000000000000000000010101";
    in22 <= "00000000000000000000000000010110";
    in23 <= "00000000000000000000000000010111";
    in24 <= "00000000000000000000000000011000";
    in25 <= "00000000000000000000000000011001";
    in26 <= "00000000000000000000000000011010";
    in27 <= "00000000000000000000000000011011";
    in28 <= "00000000000000000000000000011100";
    in29 <= "00000000000000000000000000011101";
    in30 <= "00000000000000000000000000011110";
    in31 <= "00000000000000000000000000011111";
    
    wait for 10 ns;
    s <= "000000";
    wait for 10 ns;
    s <= "000001";
    wait for 10 ns;
    s <= "000010";
    wait for 10 ns;
    s <= "000011";
    wait for 10 ns;
    s <= "000100";
    wait for 10 ns;
    s <= "000101";
    wait for 10 ns;
    s <= "000110";
    wait for 10 ns;
    s <= "000111";
    wait for 10 ns;
    s <= "001000";
    wait for 10 ns;
    s <= "001001";
    wait for 10 ns;
    s <= "001010";
    wait for 10 ns;
    s <= "001011";
    wait for 10 ns;
    s <= "001100";
    wait for 10 ns;
    s <= "001101";
    wait for 10 ns;
    s <= "001110";
    wait for 10 ns;
    s <= "001111";
    wait for 10 ns;
    s <= "010000";
    wait for 10 ns;
    s <= "010001";
    wait for 10 ns;
    s <= "010010";
    wait for 10 ns;
    s <= "010011";
    wait for 10 ns;
    s <= "010100";
    wait for 10 ns;
    s <= "010101";
    wait for 10 ns;
    s <= "010110";
    wait for 10 ns;
    s <= "010111";
    wait for 10 ns;
    s <= "011000";
    wait for 10 ns;
    s <= "011001";
    wait for 10 ns;
    s <= "011010";
    wait for 10 ns;
    s <= "011011";
    wait for 10 ns;
    s <= "011100";
    wait for 10 ns;
    s <= "011101";
    wait for 10 ns;
    s <= "011110";
    wait for 10 ns;
    s <= "011111";
    
    end process;
    


end Behavioral;
