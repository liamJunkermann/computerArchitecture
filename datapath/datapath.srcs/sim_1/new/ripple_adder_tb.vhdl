----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Design Name: 
-- Module Name: ripple_adder_tb - Behavioral
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

ENTITY ripple_adder_tb IS
  --  Port ( );
END ripple_adder_tb;

ARCHITECTURE Behavioral OF ripple_adder_tb IS

  COMPONENT ripple_adder
    PORT (
      a, b : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      c_in : IN STD_LOGIC;
      s : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      c_out, v_out : OUT STD_LOGIC
    );
  END COMPONENT;

  SIGNAL a, b, s : STD_LOGIC_VECTOR(31 DOWNTO 0);
  SIGNAL c_in, c_out, v_out : STD_LOGIC;

BEGIN

  uut : ripple_adder PORT MAP(
    a => a,
    b => b,
    c_in => c_in,
    s => s,
    c_out => c_out,
    v_out => v_out
  );

  stim_proc : PROCESS
  BEGIN

    a <= "00000000000000000000000000000000";
    b <= "00000000000000000000000000000000";
    c_in <= '0';

    WAIT FOR 10ns;

    a <= "01111001110100010010001110100111";

    WAIT FOR 10ns;

    b <= "00000000000000000000000000000001";

    WAIT FOR 10ns;

    b <= a;

    WAIT FOR 10ns;

    b <= "10000000000000000000000000000000";

    WAIT FOR 10ns;

    c_in <= '1';

    WAIT FOR 10ns;
  END PROCESS;
END Behavioral;