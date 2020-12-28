----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Design Name: 
-- Module Name: mux2_32bit_tb - Behavioral
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

entity mux2_32bit_tb is
--  Port ( );
end mux2_32bit_tb;

architecture Behavioral of mux2_32bit_tb is
    component mux2_32bit
    PORT (
    s : IN STD_LOGIC;
    in1 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in2 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    z : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
  end component;
  
  signal s : std_logic;
  signal in1, in2, z : std_logic_vector(31 downto 0);
begin

uut: mux2_32bit port map (
s => s,
in1 => in1,
in2 => in2,
z => z
);

stim_proc: process
begin
 wait for 10ns;
 
 in1 <= "11111100101001100101110010000100";
 in2 <= "10010011110001110011100000101110";
 
 
 wait for 10 ns;
 s  <= '0';
 wait for 10ns;
 s <= '1';

end process;
end Behavioral;
