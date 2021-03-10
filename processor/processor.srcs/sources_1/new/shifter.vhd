----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/31/2020 10:08:59 AM
-- Design Name: 
-- Module Name: shifter - Behavioral
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

entity shifter is
    PORT (
        b : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
        s : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
        IL, IR : IN STD_LOGIC;
        h : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
      );
end shifter;

architecture Behavioral of shifter is
COMPONENT mux3_1 IS
    PORT (
      in0, in1, in2 : IN STD_LOGIC;
      s : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      z : OUT STD_LOGIC
    );
  END COMPONENT;
BEGIN
  mux3_1_0 : mux3_1 PORT MAP(
    in0 => b(0),
    in1 => b(1),
    in2 => IL,
    s => s,
    z => h(0)
  );
  mux3_1_1 : mux3_1 PORT MAP(
    in0 => b(1),
    in1 => b(2),
    in2 => b(0),
    s => s,
    z => h(1)
  );
  mux3_1_2 : mux3_1 PORT MAP(
    in0 => b(2),
    in1 => b(3),
    in2 => b(1),
    s => s,
    z => h(2)
  );
  mux3_1_3 : mux3_1 PORT MAP(
    in0 => b(3),
    in1 => b(4),
    in2 => b(2),
    s => s,
    z => h(3)
  );
  mux3_1_4 : mux3_1 PORT MAP(
    in0 => b(4),
    in1 => b(5),
    in2 => b(3),
    s => s,
    z => h(4)
  );
  mux3_1_5 : mux3_1 PORT MAP(
    in0 => b(5),
    in1 => b(6),
    in2 => b(4),
    s => s,
    z => h(5)
  );
  mux3_1_6 : mux3_1 PORT MAP(
    in0 => b(6),
    in1 => b(7),
    in2 => b(5),
    s => s,
    z => h(6)
  );
  mux3_1_7 : mux3_1 PORT MAP(
    in0 => b(7),
    in1 => b(8),
    in2 => b(6),
    s => s,
    z => h(7)
  );
  mux3_1_8 : mux3_1 PORT MAP(
    in0 => b(8),
    in1 => b(9),
    in2 => b(7),
    s => s,
    z => h(8)
  );
  mux3_1_9 : mux3_1 PORT MAP(
    in0 => b(9),
    in1 => b(10),
    in2 => b(8),
    s => s,
    z => h(9)
  );
  mux3_1_10 : mux3_1 PORT MAP(
    in0 => b(10),
    in1 => b(11),
    in2 => b(9),
    s => s,
    z => h(10)
  );
  mux3_1_11 : mux3_1 PORT MAP(
    in0 => b(11),
    in1 => b(12),
    in2 => b(10),
    s => s,
    z => h(11)
  );
  mux3_1_12 : mux3_1 PORT MAP(
    in0 => b(12),
    in1 => b(13),
    in2 => b(11),
    s => s,
    z => h(12)
  );
  mux3_1_13 : mux3_1 PORT MAP(
    in0 => b(13),
    in1 => b(14),
    in2 => b(12),
    s => s,
    z => h(13)
  );
  mux3_1_14 : mux3_1 PORT MAP(
    in0 => b(14),
    in1 => b(15),
    in2 => b(13),
    s => s,
    z => h(14)
  );
  mux3_1_15 : mux3_1 PORT MAP(
    in0 => b(15),
    in1 => b(16),
    in2 => b(14),
    s => s,
    z => h(15)
  );
  mux3_1_16 : mux3_1 PORT MAP(
    in0 => b(16),
    in1 => b(17),
    in2 => b(15),
    s => s,
    z => h(16)
  );
  mux3_1_17 : mux3_1 PORT MAP(
    in0 => b(17),
    in1 => b(18),
    in2 => b(16),
    s => s,
    z => h(17)
  );
  mux3_1_18 : mux3_1 PORT MAP(
    in0 => b(18),
    in1 => b(19),
    in2 => b(17),
    s => s,
    z => h(18)
  );
  mux3_1_19 : mux3_1 PORT MAP(
    in0 => b(19),
    in1 => b(20),
    in2 => b(18),
    s => s,
    z => h(19)
  );
  mux3_1_20 : mux3_1 PORT MAP(
    in0 => b(20),
    in1 => b(21),
    in2 => b(19),
    s => s,
    z => h(20)
  );
  mux3_1_21 : mux3_1 PORT MAP(
    in0 => b(21),
    in1 => b(22),
    in2 => b(20),
    s => s,
    z => h(21)
  );
  mux3_1_22 : mux3_1 PORT MAP(
    in0 => b(22),
    in1 => b(23),
    in2 => b(21),
    s => s,
    z => h(22)
  );
  mux3_1_23 : mux3_1 PORT MAP(
    in0 => b(23),
    in1 => b(24),
    in2 => b(22),
    s => s,
    z => h(23)
  );
  mux3_1_24 : mux3_1 PORT MAP(
    in0 => b(24),
    in1 => b(25),
    in2 => b(23),
    s => s,
    z => h(24)
  );
  mux3_1_25 : mux3_1 PORT MAP(
    in0 => b(25),
    in1 => b(26),
    in2 => b(24),
    s => s,
    z => h(25)
  );
  mux3_1_26 : mux3_1 PORT MAP(
    in0 => b(26),
    in1 => b(27),
    in2 => b(25),
    s => s,
    z => h(26)
  );
  mux3_1_27 : mux3_1 PORT MAP(
    in0 => b(27),
    in1 => b(28),
    in2 => b(26),
    s => s,
    z => h(27)
  );
  mux3_1_28 : mux3_1 PORT MAP(
    in0 => b(28),
    in1 => b(29),
    in2 => b(27),
    s => s,
    z => h(28)
  );
  mux3_1_29 : mux3_1 PORT MAP(
    in0 => b(29),
    in1 => b(30),
    in2 => b(28),
    s => s,
    z => h(29)
  );
  mux3_1_30 : mux3_1 PORT MAP(
    in0 => b(30),
    in1 => b(31),
    in2 => b(29),
    s => s,
    z => h(30)
  );
  mux3_1_31 : mux3_1 PORT MAP(
    in0 => b(31),
    in1 => IR,
    in2 => b(30),
    s => s,
    z => h(31)
  );
end Behavioral;
