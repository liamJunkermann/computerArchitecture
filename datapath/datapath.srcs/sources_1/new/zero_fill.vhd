----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/31/2020 01:58:28 PM
-- Design Name: 
-- Module Name: zero_fill - Behavioral
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

entity zero_fill is
    Port ( sb_in : in STD_LOGIC_VECTOR (4 downto 0);
           zero_fill_out : out STD_LOGIC_VECTOR (31 downto 0));
end zero_fill;

architecture Behavioral of zero_fill is
begin
    zero_fill_out(31 downto 4) <= "0000000000000000000000000000";
    zero_fill_out(4 downto 0) <= sb_in;
end Behavioral;
