----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/31/2020 03:56:31 PM
-- Design Name: 
-- Module Name: flag_reg_tb - Behavioral
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

ENTITY flag_reg_tb IS
    --  Port ( );
END flag_reg_tb;

ARCHITECTURE Behavioral OF flag_reg_tb IS
    COMPONENT flag_reg
        PORT (
            v_in, c_in, n_in, z_in, flag_load, Clk : IN STD_LOGIC;
            reset : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
            flag_out : OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
        );
    END COMPONENT;

    SIGNAL v, c, n, z, flag_load, Clk : STD_LOGIC;
    SIGNAL reset : STD_LOGIC_VECTOR(3 DOWNTO 0);
    SIGNAL flag_out : STD_LOGIC_VECTOR(3 DOWNTO 0);
BEGIN

    uut : flag_reg PORT MAP(
        v_in => v,
        c_in => c,
        n_in => n,
        z_in => z,
        flag_load => flag_load,
        Clk => Clk,
        reset => reset,
        flag_out => flag_out
    );

    Clk_proc : PROCESS
    BEGIN
        Clk <= '0';
        WAIT FOR 5ns;
        Clk <= '1';
        WAIT FOR 5ns;
    END PROCESS;

    stim_proc : PROCESS
    BEGIN
        reset <= "0000";
        flag_load <= '1';
        v <= '0';
        c <= '0';
        n <= '0';
        z <= '0';

        WAIT FOR 10ns;
        v <= '1';
        c <= '0';
        n <= '0';
        z <= '0';

        WAIT FOR 10ns;
        v <= '1';
        c <= '1';
        n <= '0';
        z <= '0';

        WAIT FOR 10ns;
        v <= '1';
        c <= '1';
        n <= '1';
        z <= '0';

        WAIT FOR 10ns;
        v <= '1';
        c <= '1';
        n <= '1';
        z <= '1';
        WAIT FOR 10ns;
        flag_load <= '0';
        reset <= "1000";

        WAIT FOR 10ns;
        reset <= "1100";

        WAIT FOR 10ns;
        reset <= "1110";

        WAIT FOR 10ns;
        flag_load <= '1';
        reset <= "1111";

        WAIT;
    END PROCESS;

END Behavioral;