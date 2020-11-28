ENTITY input_selector IS
  PORT (
    a_in, b_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_in : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    selected : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END input_selector;

ARCHITECTURE Behavioral OF input_selector IS

BEGIN
  PROCESS (s_in, a_in, b_in)
  BEGIN
    CASE(s_in) IS
      WHEN "00" => selected <= a_in AND b_in AFTER 1 ns;
      WHEN "01" => selected <= a_in OR b_in AFTER 1 ns;
      WHEN "10" => selected <= a_in XOR b_in AFTER 1 ns;
      WHEN "11" => selected <= NOT a_in AFTER 1 ns;
      WHEN OTHERS => selected <= NOT a_in AFTER 1 ns;
    END CASE;
  END PROCESS;

END Behavioral; -- Behavioral