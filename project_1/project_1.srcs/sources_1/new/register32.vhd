----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/01/2020 01:25:38 PM
-- Design Name: 
-- Module Name: register32 - Behavioral
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

entity register32 is PORT(
    data:  in std_logic_vector(31 downto 0);
    load: in std_logic;
    clear: in std_logic;
    clk: in std_logic;
    Q: out std_logic_vector(31 downto 0)
);
end register32;

architecture Behavioral of register32 is

begin
    process(clk, clear)
    begin
        if clear = '1' then
            q <= x"00000000";
        elsif rising_edge(clk) then
            if load='1' then
                q <= data;
            end if;
        end if;
     end process;
end Behavioral;
