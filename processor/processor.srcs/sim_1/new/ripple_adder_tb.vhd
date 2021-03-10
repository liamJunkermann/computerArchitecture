----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/31/2020 03:56:31 PM
-- Design Name: 
-- Module Name: ripple_adder_tb - Behavioral
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

entity ripple_adder_tb is
--  Port ( );
end ripple_adder_tb;

architecture Behavioral of ripple_adder_tb is

    component ripple_adder
    PORT (
    a, b : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    c_in : IN STD_LOGIC;
    s : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    c_out, v_out : OUT STD_LOGIC
  );
  end component;
  
  signal a, b, s: std_logic_vector(31 downto 0);
  signal c_in, c_out, v_out: STD_LOGIC;

begin

    uut: ripple_adder port map(
        a => a,
        b => b,
        c_in => c_in,
        s => s,
        c_out => c_out,
        v_out => v_out
     );
     
     stim_proc: process
     begin
     
        a <= "00000000000000000000000000000000";
        b <= "00000000000000000000000000000000";
        c_in <= '0';
        
        wait for 10ns;
        
        a <= "01111001110100010010001110100111";
        
        wait for 10ns;
        
        b <= "00000000000000000000000000000001";
        
        wait for 10ns;
        
        b <= a;
        
        wait for 10ns;
        
        b <= "10000000000000000000000000000000";
        
        wait for 10ns;
        
        c_in <= '1';
        
        
        wait;
     end process;


end Behavioral;