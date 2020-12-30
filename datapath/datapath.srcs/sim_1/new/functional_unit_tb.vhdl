----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/28/2020 05:34:04 AM
-- Design Name: 
-- Module Name: functional_unit_tb - Behavioral
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

ENTITY functional_unit_tb IS
  --  Port ( );
END functional_unit_tb;

ARCHITECTURE Behavioral OF functional_unit_tb IS
  COMPONENT functional_unit
    PORT (
      a_in, b_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      function_select : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      v, c, n, z : OUT STD_LOGIC;
      f : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
  END COMPONENT;

  SIGNAL a_in, b_in, f : STD_LOGIC_VECTOR(31 DOWNTO 0);
  SIGNAL function_select : STD_LOGIC_VECTOR(4 DOWNTO 0);
  SIGNAL v, c, n, z : STD_LOGIC;
BEGIN

  uut : functional_unit PORT MAP(
    a_in => a_in,
    b_in => b_in,
    function_select => function_select,
    v => v,
    c => c,
    n => n,
    z => z,
    f => f
  );

  stim_proc : PROCESS
  BEGIN
    a_in <= "00000001000010001011101010011111";
    b_in <= "01111001110100010010001110100111";

    function_select <= "00000";

    WAIT FOR 20ns;
    function_select <= "00000";

    WAIT FOR 20ns;
    function_select <= "00001";

    WAIT FOR 20ns;
    function_select <= "00010";

    WAIT FOR 20ns;
    function_select <= "00011";

    WAIT FOR 20ns;
    function_select <= "00100";

    WAIT FOR 20ns;
    function_select <= "00101";

    WAIT FOR 20ns;
    function_select <= "00110";

    WAIT FOR 20ns;
    function_select <= "00111";

    WAIT FOR 20ns;
    function_select <= "01000";

    WAIT FOR 20ns;
    function_select <= "01001";

    WAIT FOR 20ns;
    function_select <= "01010";

    WAIT FOR 20ns;
    function_select <= "01011";

    WAIT FOR 20ns;
    function_select <= "01100";

    WAIT FOR 20ns;
    function_select <= "01101";

    WAIT FOR 20ns;
    function_select <= "01110";

    WAIT FOR 20ns;
    function_select <= "01111";

    WAIT FOR 20ns;
    function_select <= "10000";

    WAIT FOR 20ns;
    function_select <= "10100";

    WAIT FOR 20ns;
    function_select <= "11000";

    WAIT FOR 20ns;

  END PROCESS;
END Behavioral;