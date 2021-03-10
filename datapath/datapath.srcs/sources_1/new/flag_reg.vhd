----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/31/2020 12:02:43 PM
-- Design Name: 
-- Module Name: flag_reg - Behavioral
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

entity flag_reg is
    Port ( v_in, c_in, n_in, z_in, flag_load, Clk : in STD_LOGIC;
          reset: in STD_LOGIC_VECTOR(3 downto 0);
          flag_out : out STD_LOGIC_VECTOR (3 downto 0)
      );
end flag_reg;

architecture Behavioral of flag_reg is

begin

process(Clk)
begin
    if(reset(0) = '1') then
        flag_out(0) <= '0';
    elsif(reset(1) = '1') then
        flag_out(1) <= '0';
    elsif(reset(2) = '1') then
        flag_out(2) <= '0';
    elsif(reset(3) = '1') then
        flag_out(3) <= '0';
    elsif (rising_edge(clk) AND (flag_load = '1')) then
        flag_out(0) <= c_in;
        flag_out(1) <= v_in;
        flag_out(2) <= z_in;
        flag_out(3) <= n_in;
    end if;
end process;


end Behavioral;
