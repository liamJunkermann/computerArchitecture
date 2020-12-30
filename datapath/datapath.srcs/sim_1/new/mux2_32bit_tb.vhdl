----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Design Name: 
-- Module Name: mux2_32bit_tb - Behavioral
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

ENTITY mux2_32bit_tb IS
  --  Port ( );
END mux2_32bit_tb;

ARCHITECTURE Behavioral OF mux2_32bit_tb IS
  COMPONENT mux2_32bit
    PORT (
      s : IN STD_LOGIC;
      in1 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      in2 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      z : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
  END COMPONENT;

  SIGNAL s : STD_LOGIC;
  SIGNAL in1, in2, z : STD_LOGIC_VECTOR(31 DOWNTO 0);
BEGIN

  uut : mux2_32bit PORT MAP(
    s => s,
    in1 => in1,
    in2 => in2,
    z => z
  );

  stim_proc : PROCESS
  BEGIN
    WAIT FOR 10ns;

    in1 <= "11111100101001100101110010000100";
    in2 <= "10010011110001110011100000101110";
    WAIT FOR 10 ns;
    s <= '0';
    WAIT FOR 10ns;
    s <= '1';

  END PROCESS;
END Behavioral;