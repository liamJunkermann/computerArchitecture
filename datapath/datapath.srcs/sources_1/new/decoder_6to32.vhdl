ENTITY decoder_6to32 IS
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
END decoder_6to32;

ARCHITECTURE Behavior OF decoder_6to32 IS
BEGIN
  z0 <= NOT(s(5)) AND NOT(s(4)) AND NOT(s(3)) AND NOT(s(2)) AND NOT(s(1)) AND NOT(s(0));
  z1 <= NOT(s(5)) AND NOT(s(4)) AND NOT(s(3)) AND NOT(s(2)) AND NOT(s(1)) AND s(0);
  z2 <= NOT(s(5)) AND NOT(s(4)) AND NOT(s(3)) AND NOT(s(2)) AND s(1) AND NOT(s(0));
  z3 <= NOT(s(5)) AND NOT(s(4)) AND NOT(s(3)) AND NOT(s(2)) AND s(1) AND s(0);
  z4 <= NOT(s(5)) AND NOT(s(4)) AND NOT(s(3)) AND s(2) AND NOT(s(1)) AND NOT(s(0));
  z5 <= NOT(s(5)) AND NOT(s(4)) AND NOT(s(3)) AND s(2) AND NOT(s(1)) AND s(0);
  z6 <= NOT(s(5)) AND NOT(s(4)) AND NOT(s(3)) AND s(2) AND s(1) AND NOT(s(0));
  z7 <= NOT(s(5)) AND NOT(s(4)) AND NOT(s(3)) AND s(2) AND s(1) AND s(0);
  z8 <= NOT(s(5)) AND NOT(s(4)) AND s(3) AND NOT(s(2)) AND NOT(s(1)) AND NOT(s(0));
  z9 <= NOT(s(5)) AND NOT(s(4)) AND s(3) AND NOT(s(2)) AND NOT(s(1)) AND s(0);
  z10 <= NOT(s(5)) AND NOT(s(4)) AND s(3) AND NOT(s(2)) AND s(1) AND NOT(s(0));
  z11 <= NOT(s(5)) AND NOT(s(4)) AND s(3) AND NOT(s(2)) AND s(1) AND s(0);
  z12 <= NOT(s(5)) AND NOT(s(4)) AND s(3) AND s(2) AND NOT(s(1)) AND NOT(s(0));
  z13 <= NOT(s(5)) AND NOT(s(4)) AND s(3) AND s(2) AND NOT(s(1)) AND s(0);
  z14 <= NOT(s(5)) AND NOT(s(4)) AND s(3) AND s(2) AND s(1) AND NOT(s(0));
  z15 <= NOT(s(5)) AND NOT(s(4)) AND s(3) AND s(2) AND s(1) AND s(0);
  z16 <= NOT(s(5)) AND s(4) AND NOT(s(3)) AND NOT(s(2)) AND NOT(s(1)) AND NOT(s(0));
  z17 <= NOT(s(5)) AND s(4) AND NOT(s(3)) AND NOT(s(2)) AND NOT(s(1)) AND s(0);
  z18 <= NOT(s(5)) AND s(4) AND NOT(s(3)) AND NOT(s(2)) AND s(1) AND NOT(s(0));
  z19 <= NOT(s(5)) AND s(4) AND NOT(s(3)) AND NOT(s(2)) AND s(1) AND s(0);
  z20 <= NOT(s(5)) AND s(4) AND NOT(s(3)) AND s(2) AND NOT(s(1)) AND NOT(s(0));
  z21 <= NOT(s(5)) AND s(4) AND NOT(s(3)) AND s(2) AND NOT(s(1)) AND s(0);
  z22 <= NOT(s(5)) AND s(4) AND NOT(s(3)) AND s(2) AND s(1) AND NOT(s(0));
  z23 <= NOT(s(5)) AND s(4) AND NOT(s(3)) AND s(2) AND s(1) AND s(0);
  z24 <= NOT(s(5)) AND s(4) AND s(3) AND NOT(s(2)) AND NOT(s(1)) AND NOT(s(0));
  z25 <= NOT(s(5)) AND s(4) AND s(3) AND NOT(s(2)) AND NOT(s(1)) AND s(0);
  z26 <= NOT(s(5)) AND s(4) AND s(3) AND NOT(s(2)) AND s(1) AND NOT(s(0));
  z27 <= NOT(s(5)) AND s(4) AND s(3) AND NOT(s(2)) AND s(1) AND s(0);
  z28 <= NOT(s(5)) AND s(4) AND s(3) AND s(2) AND NOT(s(1)) AND NOT(s(0));
  z29 <= NOT(s(5)) AND s(4) AND s(3) AND s(2) AND NOT(s(1)) AND s(0);
  z30 <= NOT(s(5)) AND s(4) AND s(3) AND s(2) AND s(1) AND NOT(s(0));
  z31 <= NOT(s(5)) AND s(4) AND s(3) AND s(2) AND s(1) AND s(0);
END Behavior; -- Behavior