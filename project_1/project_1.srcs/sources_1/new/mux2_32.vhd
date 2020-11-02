----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/01/2020 08:34:31 AM
-- Design Name: 
-- Module Name: mux2_32 - Behavioral
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

entity mux2_32 is
    Port ( src : in STD_LOGIC;
           In0 : in STD_LOGIC_VECTOR(31 downto 0);
           In1 : in STD_LOGIC_VECTOR(31 downto 0);
           Z   : out STD_LOGIC_VECTOR(31 downto 0)
        );
end mux2_32;

architecture Behavioral of mux2_32 is
begin
    process(src, In0, In1)
    begin
        case src  is
            when "0" => Z <= In0;
            when "1" => Z <= In1;
        end case ;
    end process;
end Behavioral;
