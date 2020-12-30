----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Design Name: 
-- Module Name: reg32_tb - Behavioral
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

ENTITY reg32_tb IS
  --  Port ( );
END reg32_tb;

ARCHITECTURE Behavioral OF reg32_tb IS
  COMPONENT reg32
    PORT (
      D : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      load0, load1, Clk : IN STD_LOGIC;
      Q : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
  END COMPONENT;

  SIGNAL D, Q : STD_LOGIC_VECTOR(31 DOWNTO 0);
  SIGNAL load0, load1, Clk : STD_LOGIC;

BEGIN

  uut : reg32 PORT MAP(
    D => D,
    load0 => load0,
    load1 => load1,
    Clk => Clk,
    Q => Q
  );
  Clk <= NOT Clk AFTER 5ns;
  stim_proc : PROCESS
  BEGIN

    WAIT FOR 10ns;
    d <= "11111100101001100101110010000100";
    load0 <= '0';
    load1 <= '0';

    WAIT FOR 10ns;
    load0 <= '1';
    load1 <= '1';

    WAIT FOR 10ns;
    load0 <= '0';
    load1 <= '0';
    d <= "10010011110001110011100000101110";

    WAIT FOR 10ns;
    load0 <= '1';
    load1 <= '1';
  END PROCESS;
END Behavioral;