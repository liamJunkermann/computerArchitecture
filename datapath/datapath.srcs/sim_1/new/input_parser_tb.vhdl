----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/28/2020 05:34:04 AM
-- Design Name: 
-- Module Name: input_parser_tb - Behavioral
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

entity input_parser_tb is
--  Port ( );
end input_parser_tb;

architecture Behavioral of input_parser_tb is
    component input_parser
    PORT (
        b : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
        s_in : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
        y : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
      );
     end component;
     
     signal b : std_logic_vector(31 downto 0) := (others => '0');
     signal s_in : std_logic_vector(1 downto 0) := (others => '0');
     signal y: std_logic_vector(31 downto 0);
begin

    uut: input_parser port map(
        b => b,
        s_in => s_in,
        y => y
     );
     stim_proc: process
     begin
     b <= x"AAAAAAAA";
     s_in <= "00";
     
     wait for 10ns;
     s_in <= "01";
     
     wait for 10ns;
     s_in <= "10";
     
     wait for 10ns;
     s_in <= "11";
     
     wait;
     end process;
    

end Behavioral;
