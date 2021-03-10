----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/01/2021 03:37:18 PM
-- Design Name: 
-- Module Name: mux2_17bit - Behavioral
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

entity mux2_17bit is
    Port ( in_0 : in STD_LOGIC_VECTOR (16 downto 0);
           in_1 : in STD_LOGIC_VECTOR (16 downto 0);
           mux_ctrl : in STD_LOGIC;
           mux_out : out STD_LOGIC_VECTOR (16 downto 0));
end mux2_17bit;

architecture Behavioral of mux2_17bit is

begin

    mux_out <= in_0 when(mux_ctrl <= '0') else in_1 when(mux_ctrl <= '1');

end Behavioral;
