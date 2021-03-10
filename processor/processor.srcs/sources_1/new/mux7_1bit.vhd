----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/01/2021 03:37:18 PM
-- Design Name: 
-- Module Name: mux7_1bit - Behavioral
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

entity mux7_1bit is
    Port ( mux_ctrl : in STD_LOGIC_VECTOR (2 downto 0);
           in_0 ,in_1, in_c, in_v, in_z, in_n, in_not_c, in_not_z : in STD_LOGIC;
           mux_out : out STD_LOGIC);
end mux7_1bit;

architecture Behavioral of mux7_1bit is

begin

process(mux_ctrl, in_0 ,in_1, in_c, in_v, in_z, in_n, in_not_c, in_not_z)
begin
case mux_ctrl is
        when "000" => mux_out <= in_0;
        when "001" => mux_out <= in_1;
        when "010" => mux_out <= in_c;
        when "011" => mux_out <= in_v;
        when "100" => mux_out <= in_z;
        when "101" => mux_out <= in_n;
        when "110" => mux_out <= in_not_c;
        when "111" => mux_out <= in_not_z;
        when others => mux_out <= in_0;
end case;
end process;

end Behavioral;
