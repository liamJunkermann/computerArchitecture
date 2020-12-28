library IEEE;
use IEEE.std_logic_1164.all;

ENTITY mux32_32bit IS
  PORT (
    s : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    in0 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in1 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in2 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in3 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in4 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in5 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in6 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in7 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in8 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in9 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in10 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in11 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in12 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in13 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in14 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in15 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in16 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in17 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in18 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in19 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in20 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in21 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in22 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in23 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in24 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in25 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in26 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in27 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in28 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in29 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in30 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in31 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    z: OUT STD_LOGIC_VECTOR(31 downto 0)
  );
END mux32_32bit;

ARCHITECTURE Behavioral OF mux32_32BIT IS
BEGIN
  PROCESS (s,
    in0,
    in1,
    in2,
    in3,
    in4,
    in5,
    in6,
    in7,
    in8,
    in9,
    in10,
    in11,
    in12,
    in13,
    in14,
    in15,
    in16,
    in17,
    in18,
    in19,
    in20,
    in21,
    in22,
    in23,
    in24,
    in25,
    in26,
    in27,
    in28,
    in29,
    in30,
    in31)
  BEGIN
    CASE s IS
      WHEN "0" => z <= in0;
      WHEN "1" => z <= in1;
      WHEN "10" => z <= in2;
      WHEN "11" => z <= in3;
      WHEN "100" => z <= in4;
      WHEN "101" => z <= in5;
      WHEN "110" => z <= in6;
      WHEN "111" => z <= in7;
      WHEN "1000" => z <= in8;
      WHEN "1001" => z <= in9;
      WHEN "1010" => z <= in10;
      WHEN "1011" => z <= in11;
      WHEN "1100" => z <= in12;
      WHEN "1101" => z <= in13;
      WHEN "1110" => z <= in14;
      WHEN "1111" => z <= in15;
      WHEN "10000" => z <= in16;
      WHEN "10001" => z <= in17;
      WHEN "10010" => z <= in18;
      WHEN "10011" => z <= in19;
      WHEN "10100" => z <= in20;
      WHEN "10101" => z <= in21;
      WHEN "10110" => z <= in22;
      WHEN "10111" => z <= in23;
      WHEN "11000" => z <= in24;
      WHEN "11001" => z <= in25;
      WHEN "11010" => z <= in26;
      WHEN "11011" => z <= in27;
      WHEN "11100" => z <= in28;
      WHEN "11101" => z <= in29;
      WHEN "11110" => z <= in30;
      WHEN "11111" => z <= in31;
      WHEN OTHERS => z <= in1;
    END CASE;
  END PROCESS;
END Behavioral; -- Behavioral