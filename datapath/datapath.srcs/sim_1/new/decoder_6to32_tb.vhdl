----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/28/2020 05:34:04 AM
-- Design Name: 
-- Module Name: decoder_6to32_tb - Behavioral
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

ENTITY decoder_6to32_tb IS
   --  Port ( );
END decoder_6to32_tb;

ARCHITECTURE Behavioral OF decoder_6to32_tb IS
   COMPONENT decoder_6to32
      PORT (
         s : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
         z0 : OUT STD_LOGIC;
         z1 : OUT STD_LOGIC;
         z2 : OUT STD_LOGIC;
         z3 : OUT STD_LOGIC;
         z4 : OUT STD_LOGIC;
         z5 : OUT STD_LOGIC;
         z6 : OUT STD_LOGIC;
         z7 : OUT STD_LOGIC;
         z8 : OUT STD_LOGIC;
         z9 : OUT STD_LOGIC;
         z10 : OUT STD_LOGIC;
         z11 : OUT STD_LOGIC;
         z12 : OUT STD_LOGIC;
         z13 : OUT STD_LOGIC;
         z14 : OUT STD_LOGIC;
         z15 : OUT STD_LOGIC;
         z16 : OUT STD_LOGIC;
         z17 : OUT STD_LOGIC;
         z18 : OUT STD_LOGIC;
         z19 : OUT STD_LOGIC;
         z20 : OUT STD_LOGIC;
         z21 : OUT STD_LOGIC;
         z22 : OUT STD_LOGIC;
         z23 : OUT STD_LOGIC;
         z24 : OUT STD_LOGIC;
         z25 : OUT STD_LOGIC;
         z26 : OUT STD_LOGIC;
         z27 : OUT STD_LOGIC;
         z28 : OUT STD_LOGIC;
         z29 : OUT STD_LOGIC;
         z30 : OUT STD_LOGIC;
         z31 : OUT STD_LOGIC
      );
   END COMPONENT;
   SIGNAL s : STD_LOGIC_VECTOR(5 DOWNTO 0);
   SIGNAL z0, z1, z2, z3, z4, z5, z6, z7, z8, z9, z10, z11, z12, z13, z14, z15, z16, z17, z18, z19, z20, z21, z22, z23, z24, z25, z26, z27, z28, z29, z30, z31 : STD_LOGIC;
BEGIN

   uut : decoder_6to32 PORT MAP(
      s => s,
      z0 => z0,
      z1 => z1,
      z2 => z2,
      z3 => z3,
      z4 => z4,
      z5 => z5,
      z6 => z6,
      z7 => z7,
      z8 => z8,
      z9 => z9,
      z10 => z10,
      z11 => z11,
      z12 => z12,
      z13 => z13,
      z14 => z14,
      z15 => z15,
      z16 => z16,
      z17 => z17,
      z18 => z18,
      z19 => z19,
      z20 => z20,
      z21 => z21,
      z22 => z22,
      z23 => z23,
      z24 => z24,
      z25 => z25,
      z26 => z26,
      z27 => z27,
      z28 => z28,
      z29 => z29,
      z30 => z30,
      z31 => z31
   );

   stim_proc : PROCESS
   BEGIN
      WAIT FOR 10ns;
      s <= "000000";
      WAIT FOR 10ns;
      s <= "000001";
      WAIT FOR 10ns;
      s <= "000010";
      WAIT FOR 10ns;
      s <= "000011";
      WAIT FOR 10ns;
      s <= "000100";
      WAIT FOR 10ns;
      s <= "000101";
      WAIT FOR 10ns;
      s <= "000110";
      WAIT FOR 10ns;
      s <= "000111";
      WAIT FOR 10ns;
      s <= "001000";
      WAIT FOR 10ns;
      s <= "001001";
      WAIT FOR 10ns;
      s <= "001010";
      WAIT FOR 10ns;
      s <= "001011";
      WAIT FOR 10ns;
      s <= "001100";
      WAIT FOR 10ns;
      s <= "001101";
      WAIT FOR 10ns;
      s <= "001110";
      WAIT FOR 10ns;
      s <= "001111";
      WAIT FOR 10ns;
      s <= "010000";
      WAIT FOR 10ns;
      s <= "010001";
      WAIT FOR 10ns;
      s <= "010010";
      WAIT FOR 10ns;
      s <= "010011";
      WAIT FOR 10ns;
      s <= "010100";
      WAIT FOR 10ns;
      s <= "010101";
      WAIT FOR 10ns;
      s <= "010110";
      WAIT FOR 10ns;
      s <= "010111";
      WAIT FOR 10ns;
      s <= "011000";
      WAIT FOR 10ns;
      s <= "011001";
      WAIT FOR 10ns;
      s <= "011010";
      WAIT FOR 10ns;
      s <= "011011";
      WAIT FOR 10ns;
      s <= "011100";
      WAIT FOR 10ns;
      s <= "011101";
      WAIT FOR 10ns;
      s <= "011110";
      WAIT FOR 10ns;
      s <= "011111";
   END PROCESS;

END Behavioral;