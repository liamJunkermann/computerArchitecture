----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Design Name: 
-- Module Name: reg32_tb - Behavioral
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

entity reg32_tb is
--  Port ( );
end reg32_tb;

architecture Behavioral of reg32_tb is
component reg32
  PORT (
    D : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    load0, load1, Clk : IN STD_LOGIC;
    Q : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
end component;

signal D, Q : std_logic_vector(31 downto 0);
signal load0, load1, Clk : std_logic;

begin

uut: reg32 port map(
D => D,
load0 => load0,
load1 => load1,
Clk => Clk,
Q => Q
);

Clk_proc: process
begin
Clk <= '0';
wait for 5ns;
Clk <= '1';
wait for 5ns;
end process;

stim_proc : process
begin

    wait for 10ns;
    d <= "11111100101001100101110010000100";
    load0 <= '0';
    load1 <= '0';
    
    wait for 10ns;
    load0 <= '1';
    load1 <= '1';
    
    wait for 10ns;
    load0 <= '0';
    load1 <= '0';
    d <= "10010011110001110011100000101110";
    
    wait for 10ns;
      load0 <= '1';
    load1 <= '1';
    
    
    end process; 


end Behavioral;
