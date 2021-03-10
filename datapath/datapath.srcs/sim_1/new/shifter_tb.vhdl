----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Design Name: 
-- Module Name: shifter_tb - Behavioral
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
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

ENTITY shifter_tb IS
  --  Port ( );
END shifter_tb;

ARCHITECTURE Behavioral OF shifter_tb IS
  COMPONENT shifter
    PORT (
      b : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      IL, IR : IN STD_LOGIC;
      h : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
  END COMPONENT;

  SIGNAL b, h : STD_LOGIC_VECTOR(31 DOWNTO 0);
  SIGNAL s : STD_LOGIC_VECTOR(1 DOWNTO 0);
  SIGNAL IL, IR : STD_LOGIC;
BEGIN

  uut : shifter PORT MAP(
    b => b,
    s => s,
    IL => IL,
    IR => IR,
    h => h
  );

  stim_proc : PROCESS
  BEGIN
    b <= "01111001110100010010001110100111";
    s <= "00";
    IL <= '0';
    IR <= '0';

    WAIT FOR 10ns;

    b <= "01111001110100010010001110100111";
    s <= "01";

    WAIT FOR 10ns;

    s <= "10";

    WAIT FOR 10ns;

  END PROCESS;
END Behavioral;