LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY mux33_32bit IS
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
    in32 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    z : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END mux33_32bit;

ARCHITECTURE Behavioral OF mux33_32BIT IS
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
    in31,
    in32)
  BEGIN
    CASE s IS
      WHEN "000000" => z <= in0;
      WHEN "000001" => z <= in1;
      WHEN "000010" => z <= in2;
      WHEN "000011" => z <= in3;
      WHEN "000100" => z <= in4;
      WHEN "000101" => z <= in5;
      WHEN "000110" => z <= in6;
      WHEN "000111" => z <= in7;
      WHEN "001000" => z <= in8;
      WHEN "001001" => z <= in9;
      WHEN "001010" => z <= in10;
      WHEN "001011" => z <= in11;
      WHEN "001100" => z <= in12;
      WHEN "001101" => z <= in13;
      WHEN "001110" => z <= in14;
      WHEN "001111" => z <= in15;
      WHEN "010000" => z <= in16;
      WHEN "010001" => z <= in17;
      WHEN "010010" => z <= in18;
      WHEN "010011" => z <= in19;
      WHEN "010100" => z <= in20;
      WHEN "010101" => z <= in21;
      WHEN "010110" => z <= in22;
      WHEN "010111" => z <= in23;
      WHEN "011000" => z <= in24;
      WHEN "011001" => z <= in25;
      WHEN "011010" => z <= in26;
      WHEN "011011" => z <= in27;
      WHEN "011100" => z <= in28;
      WHEN "011101" => z <= in29;
      WHEN "011110" => z <= in30;
      WHEN "011111" => z <= in31;
      WHEN "100000" => z <= in32;
      WHEN OTHERS => z <= in32;
    END CASE;
  END PROCESS;
END Behavioral; -- Behavioral