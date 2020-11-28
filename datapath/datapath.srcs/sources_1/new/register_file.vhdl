library IEEE;
use IEEE.std_logic_1164.all;

ENTITY register_file IS
  PORT (
    Clk, load_enabled : IN STD_LOGIC;
    addr_a, addr_b, dest_d : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    out_a, out_b : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END register_file;

ARCHITECTURE Behavior OF register_file IS

  COMPONENT reg32
    PORT (
      D : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      load0, load1, Clk : IN STD_LOGIC;
      Q : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
  END COMPONENT;

  COMPONENT mux32_32bit
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
      in31 : IN STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
  END COMPONENT;

  COMPONENT mux2_32bit
    PORT (
      s : IN STD_LOGIC;
      in1 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      in2 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      z : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
  END COMPONENT;

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

  SIGNAL load_reg0, load_reg1, load_reg2, load_reg3, load_reg4, load_reg5, load_reg6, load_reg7, load_reg8, load_reg9, load_reg10, load_reg11, load_reg12, load_reg13, load_reg14, load_reg15, load_reg32, load_reg17, load_reg18, load_reg19, load_reg20, load_reg21, load_reg22, load_reg23, load_reg24, load_reg25, load_reg26, load_reg27, load_reg28, load_reg29, load_reg30, load_reg31 : STD_LOGIC;
  SIGNAL reg0_q, reg1_q, reg2_q, reg3_q, reg4_q, reg5_q, reg6_q, reg7_q, reg8_q, reg9_q, reg10_q, reg11_q, reg12_q, reg13_q, reg14_q, reg15_q, reg32_q, reg17_q, reg18_q, reg19_q, reg20_q, reg21_q, reg22_q, reg23_q, reg24_q, reg25_q, reg26_q, reg27_q, reg28_q, reg29_q, reg30_q, reg31_q, data_src_mux_out, src_reg : STD_LOGIC_VECTOR(31 DOWNTO 0);

BEGIN
  reg00000 : reg32 PORT MAP(
    D => data_src_mux_out,
    load0 => load_reg0,
    load1 => load_enabled,
    Clk => Clk,
    Q => reg0_q
  );
  reg00001 : reg32 PORT MAP(
    D => data_src_mux_out,
    load0 => load_reg1,
    load1 => load_enabled,
    Clk => Clk,
    Q => reg1_q
  );
  reg00010 : reg32 PORT MAP(
    D => data_src_mux_out,
    load0 => load_reg2,
    load1 => load_enabled,
    Clk => Clk,
    Q => reg2_q
  );
  reg00011 : reg32 PORT MAP(
    D => data_src_mux_out,
    load0 => load_reg3,
    load1 => load_enabled,
    Clk => Clk,
    Q => reg3_q
  );
  reg00100 : reg32 PORT MAP(
    D => data_src_mux_out,
    load0 => load_reg4,
    load1 => load_enabled,
    Clk => Clk,
    Q => reg4_q
  );
  reg00101 : reg32 PORT MAP(
    D => data_src_mux_out,
    load0 => load_reg5,
    load1 => load_enabled,
    Clk => Clk,
    Q => reg5_q
  );
  reg00110 : reg32 PORT MAP(
    D => data_src_mux_out,
    load0 => load_reg6,
    load1 => load_enabled,
    Clk => Clk,
    Q => reg6_q
  );
  reg00111 : reg32 PORT MAP(
    D => data_src_mux_out,
    load0 => load_reg7,
    load1 => load_enabled,
    Clk => Clk,
    Q => reg7_q
  );
  reg01000 : reg32 PORT MAP(
    D => data_src_mux_out,
    load0 => load_reg8,
    load1 => load_enabled,
    Clk => Clk,
    Q => reg8_q
  );
  reg01001 : reg32 PORT MAP(
    D => data_src_mux_out,
    load0 => load_reg9,
    load1 => load_enabled,
    Clk => Clk,
    Q => reg9_q
  );
  reg01010 : reg32 PORT MAP(
    D => data_src_mux_out,
    load0 => load_reg10,
    load1 => load_enabled,
    Clk => Clk,
    Q => reg10_q
  );
  reg01011 : reg32 PORT MAP(
    D => data_src_mux_out,
    load0 => load_reg11,
    load1 => load_enabled,
    Clk => Clk,
    Q => reg11_q
  );
  reg01100 : reg32 PORT MAP(
    D => data_src_mux_out,
    load0 => load_reg12,
    load1 => load_enabled,
    Clk => Clk,
    Q => reg12_q
  );
  reg01101 : reg32 PORT MAP(
    D => data_src_mux_out,
    load0 => load_reg13,
    load1 => load_enabled,
    Clk => Clk,
    Q => reg13_q
  );
  reg01110 : reg32 PORT MAP(
    D => data_src_mux_out,
    load0 => load_reg14,
    load1 => load_enabled,
    Clk => Clk,
    Q => reg14_q
  );
  reg01111 : reg32 PORT MAP(
    D => data_src_mux_out,
    load0 => load_reg15,
    load1 => load_enabled,
    Clk => Clk,
    Q => reg15_q
  );
  reg10000 : reg32 PORT MAP(
    D => data_src_mux_out,
    load0 => load_reg32,
    load1 => load_enabled,
    Clk => Clk,
    Q => reg32_q
  );
  reg10001 : reg32 PORT MAP(
    D => data_src_mux_out,
    load0 => load_reg17,
    load1 => load_enabled,
    Clk => Clk,
    Q => reg17_q
  );
  reg10010 : reg32 PORT MAP(
    D => data_src_mux_out,
    load0 => load_reg18,
    load1 => load_enabled,
    Clk => Clk,
    Q => reg18_q
  );
  reg10011 : reg32 PORT MAP(
    D => data_src_mux_out,
    load0 => load_reg19,
    load1 => load_enabled,
    Clk => Clk,
    Q => reg19_q
  );
  reg10100 : reg32 PORT MAP(
    D => data_src_mux_out,
    load0 => load_reg20,
    load1 => load_enabled,
    Clk => Clk,
    Q => reg20_q
  );
  reg10101 : reg32 PORT MAP(
    D => data_src_mux_out,
    load0 => load_reg21,
    load1 => load_enabled,
    Clk => Clk,
    Q => reg21_q
  );
  reg10110 : reg32 PORT MAP(
    D => data_src_mux_out,
    load0 => load_reg22,
    load1 => load_enabled,
    Clk => Clk,
    Q => reg22_q
  );
  reg10111 : reg32 PORT MAP(
    D => data_src_mux_out,
    load0 => load_reg23,
    load1 => load_enabled,
    Clk => Clk,
    Q => reg23_q
  );
  reg11000 : reg32 PORT MAP(
    D => data_src_mux_out,
    load0 => load_reg24,
    load1 => load_enabled,
    Clk => Clk,
    Q => reg24_q
  );
  reg11001 : reg32 PORT MAP(
    D => data_src_mux_out,
    load0 => load_reg25,
    load1 => load_enabled,
    Clk => Clk,
    Q => reg25_q
  );
  reg11010 : reg32 PORT MAP(
    D => data_src_mux_out,
    load0 => load_reg26,
    load1 => load_enabled,
    Clk => Clk,
    Q => reg26_q
  );
  reg11011 : reg32 PORT MAP(
    D => data_src_mux_out,
    load0 => load_reg27,
    load1 => load_enabled,
    Clk => Clk,
    Q => reg27_q
  );
  reg11100 : reg32 PORT MAP(
    D => data_src_mux_out,
    load0 => load_reg28,
    load1 => load_enabled,
    Clk => Clk,
    Q => reg28_q
  );
  reg11101 : reg32 PORT MAP(
    D => data_src_mux_out,
    load0 => load_reg29,
    load1 => load_enabled,
    Clk => Clk,
    Q => reg29_q
  );
  reg11110 : reg32 PORT MAP(
    D => data_src_mux_out,
    load0 => load_reg30,
    load1 => load_enabled,
    Clk => Clk,
    Q => reg30_q
  );
  reg11111 : reg32 PORT MAP(
    D => data_src_mux_out,
    load0 => load_reg31,
    load1 => load_enabled,
    Clk => Clk,
    Q => reg31_q
  );

  dest_decoder : decoder_6to32 PORT MAP(
    s(0) => dest_d(0),
    s(1) => dest_d(1),
    s(2) => dest_d(2),
    s(3) => dest_d(3),
    s(4) => dest_d(4),
    s(5) => dest_d(5),
    z0 => load_reg0,
    z1 => load_reg1,
    z2 => load_reg2,
    z3 => load_reg3,
    z4 => load_reg4,
    z5 => load_reg5,
    z6 => load_reg6,
    z7 => load_reg7,
    z8 => load_reg8,
    z9 => load_reg9,
    z10 => load_reg10,
    z11 => load_reg11,
    z12 => load_reg12,
    z13 => load_reg13,
    z14 => load_reg14,
    z15 => load_reg15,
    z16 => load_reg32,
    z17 => load_reg17,
    z18 => load_reg18,
    z19 => load_reg19,
    z20 => load_reg20,
    z21 => load_reg21,
    z22 => load_reg22,
    z23 => load_reg23,
    z24 => load_reg24,
    z25 => load_reg25,
    z26 => load_reg26,
    z27 => load_reg27,
    z28 => load_reg28,
    z29 => load_reg29,
    z30 => load_reg30,
    z31 => load_reg31
  );

  mux32_32bit_a : mux32_32bit PORT MAP(
    s(0) => addr_a(0),
    s(1) => addr_a(1),
    s(2) => addr_a(2),
    s(3) => addr_a(3),
    s(4) => addr_a(4),
    s(5) => addr_a(5),
    in0 => reg0_q,
    in1 => reg1_q,
    in2 => reg2_q,
    in3 => reg3_q,
    in4 => reg4_q,
    in5 => reg5_q,
    in6 => reg6_q,
    in7 => reg7_q,
    in8 => reg8_q,
    in9 => reg9_q,
    in10 => reg10_q,
    in11 => reg11_q,
    in12 => reg12_q,
    in13 => reg13_q,
    in14 => reg14_q,
    in15 => reg15_q,
    in16 => reg32_q,
    in17 => reg17_q,
    in18 => reg18_q,
    in19 => reg19_q,
    in20 => reg20_q,
    in21 => reg21_q,
    in22 => reg22_q,
    in23 => reg23_q,
    in24 => reg24_q,
    in25 => reg25_q,
    in26 => reg26_q,
    in27 => reg27_q,
    in28 => reg28_q,
    in29 => reg29_q,
    in30 => reg30_q,
    in31 => reg31_q,
    z => out_a
  );

  mux32_32bit_b : mux32_32bit PORT MAP(
    s(0) => addr_b(0),
    s(1) => addr_b(1),
    s(2) => addr_b(2),
    s(3) => addr_b(3),
    s(4) => addr_b(4),
    s(5) => addr_b(5),
    in0 => reg0_q,
    in1 => reg1_q,
    in2 => reg2_q,
    in3 => reg3_q,
    in4 => reg4_q,
    in5 => reg5_q,
    in6 => reg6_q,
    in7 => reg7_q,
    in8 => reg8_q,
    in9 => reg9_q,
    in10 => reg10_q,
    in11 => reg11_q,
    in12 => reg12_q,
    in13 => reg13_q,
    in14 => reg14_q,
    in15 => reg15_q,
    in16 => reg32_q,
    in17 => reg17_q,
    in18 => reg18_q,
    in19 => reg19_q,
    in20 => reg20_q,
    in21 => reg21_q,
    in22 => reg22_q,
    in23 => reg23_q,
    in24 => reg24_q,
    in25 => reg25_q,
    in26 => reg26_q,
    in27 => reg27_q,
    in28 => reg28_q,
    in29 => reg29_q,
    in30 => reg30_q,
    in31 => reg31_q,
    z => out_b
  );
END Behavior; -- Behavior