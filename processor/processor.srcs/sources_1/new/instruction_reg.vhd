----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/01/2021 03:37:18 PM
-- Design Name: 
-- Module Name: instruction_reg - Behavioral
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

entity instruction_reg is
    Port ( inst_ld, Clk : in STD_LOGIC;
           instruction : in STD_LOGIC_VECTOR (31 downto 0);
           opcode : out STD_LOGIC_VECTOR (16 downto 0);
           dest_reg, src_a, src_b : out STD_LOGIC_VECTOR (4 downto 0));
end instruction_reg;

architecture Behavioral of instruction_reg is
    component reg32
    PORT (
        D : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
        load0, load1, Clk : IN STD_LOGIC;
        Q : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
    end component;
    
    signal reg_out : STD_LOGIC_VECTOR(31 downto 0);
begin
    
    reg: reg32 port map(
        D => instruction,
        load0 => inst_ld,
        load1 => inst_ld,
        Clk => Clk,
        Q => reg_out
    );

   opcode <= reg_out(31 downto 15);
   dest_reg <= reg_out(14 downto 10);
   src_a <= reg_out(9 downto 5);
   src_b <= reg_out(4 downto 0);
end Behavioral;
