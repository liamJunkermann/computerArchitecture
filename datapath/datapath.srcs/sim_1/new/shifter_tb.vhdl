----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Design Name: 
-- Module Name: shifter_tb - Behavioral
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

entity shifter_tb is
--  Port ( );
end shifter_tb;

architecture Behavioral of shifter_tb is
component shifter
PORT (
    b : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    IL, IR : IN STD_LOGIC;
    h : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
  end component;
  
  signal b, h: std_logic_vector(31 downto 0);
  signal s: std_logic_vector(1 downto 0);
  signal IL, IR: std_logic;
begin

uut : shifter port map(
    b => b,
    s => s,
    IL => IL,
    IR => IR,
    h => h
   );
   
   stim_proc: process
   begin
        b <= "01111001110100010010001110100111";
        s <= "00";
        IL <= '0';
        IR <= '0';
        
        wait for 10ns;
        
        b <= "01111001110100010010001110100111";
        s <= "01";
        
        wait for 10ns;
        
        s <= "10";
        
        wait for 10ns;
   
   end process;


end Behavioral;
