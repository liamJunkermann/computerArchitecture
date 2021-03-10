----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/31/2020 03:56:31 PM
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


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity alu_tb is
--  Port ( );
end alu_tb;

architecture Behavioral of alu_tb is
    component alu
    PORT (
    a_in, b_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    g_in : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    v, c : OUT STD_LOGIC;
    g_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
  end component;
  
  signal a_in, b_in, g_out : std_logic_vector(31 downto 0);
  signal g_in : std_logic_vector(3 downto 0);
  signal v, c: std_logic;
  
  
begin

uut: alu port map(
    a_in => a_in,
    b_in => b_in,
    g_in => g_in,
    v => v,
    c => c,
    g_out => g_out
    );
    
    stim_proc: process
    begin
    a_in <= x"FFAAFFAA";
    b_in <= x"0000000F";
    g_in <= "0000";
    
    wait for 50ns;
g_in <= "0000";

wait for 50ns;
g_in <= "0001";

wait for 50ns;
g_in <= "0010";

wait for 50ns;
g_in <= "0011";

wait for 50ns;
g_in <= "0100";

wait for 50ns;
g_in <= "0101";

wait for 50ns;
g_in <= "0110";

wait for 50ns;
g_in <= "0111";

wait for 50ns;
g_in <= "1000";

wait for 50ns;
g_in <= "1001";

wait for 50ns;
g_in <= "1010";

wait for 50ns;
g_in <= "1011";

wait for 50ns;
g_in <= "1100";

wait for 50ns;
g_in <= "1101";

wait for 50ns;
g_in <= "1110";

wait for 50ns;
g_in <= "1111";
    end process;


end Behavioral;
