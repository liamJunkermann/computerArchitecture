----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/31/2020 03:56:31 PM
-- Design Name: 
-- Module Name: zero_fill_tb - Behavioral
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

entity zero_fill_tb is
--  Port ( );
end zero_fill_tb;

architecture Behavioral of zero_fill_tb is
    component zero_fill
    Port ( sb_in : in STD_LOGIC_VECTOR (4 downto 0);
    Clk : in std_logic;
        zero_fill_out : out STD_LOGIC_VECTOR (31 downto 0));
    end component;
    
    signal sb_in : std_logic_vector(4 downto 0);
    signal zero_fill_out : std_logic_vector(31 downto 0);
    signal Clk : std_logic;
begin

    uut: zero_fill port map(
        sb_in => sb_in,
        Clk => Clk,
        zero_fill_out => zero_fill_out
       );
       
    Clk_proc: process
    begin
    Clk <= '0';
    wait for 5ns;
    Clk <= '1';
    wait for 5ns;
    end process;
    
    stim_proc: process
    begin
        sb_in <= "00000";
        wait for 5ns;
        
        sb_in <= "00001";
        wait for 5ns;
        
        sb_in <= "00010";
        wait for 5ns;
        
        sb_in <= "00011";
        wait for 5ns;
        
        sb_in <= "00100";
        wait for 5ns;
        
        sb_in <= "00101";
        wait for 5ns;
        
        sb_in <= "00110";
        wait for 5ns;
    end process;
end Behavioral;
