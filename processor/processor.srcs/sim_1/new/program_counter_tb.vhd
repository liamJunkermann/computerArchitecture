----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/02/2021 07:18:17 PM
-- Design Name: 
-- Module Name: program_counter_tb - Behavioral
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

ENTITY program_counter_tb IS
    --  Port ( );
END program_counter_tb;

ARCHITECTURE Behavioral OF program_counter_tb IS
    COMPONENT program_counter
        PORT (
            prog_ld, prog_inc, Clk, reset : IN STD_LOGIC;
            ext_in : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
            inst_addr : OUT STD_LOGIC_VECTOR (31 DOWNTO 0));
    END COMPONENT;
    SIGNAL prog_ld, prog_inc, Clk, reset : STD_LOGIC;
    SIGNAL ext_in, inst_addr : STD_LOGIC_VECTOR(31 DOWNTO 0);
BEGIN

    uut : program_counter PORT MAP(
        prog_ld => prog_ld,
        prog_inc => prog_inc,
        Clk => Clk,
        reset => reset,
        ext_in => ext_in,
        inst_addr => inst_addr
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
        reset <= '1';
        prog_inc <= '0';
        prog_ld <= '1';
        ext_in <= "00000000000000000000000000000000";
        WAIT FOR 5ns;
        reset <= '0';
        WAIT FOR 10ns;

        prog_inc <= '1';
        prog_ld <= '0';
        ext_in <= "00000000000000000000000000000010";

        WAIT FOR 10ns;

        prog_inc <= '0';
        prog_ld <= '1';
        WAIT FOR 10ns;

        prog_inc <= '1';
        prog_ld <= '0';
        WAIT FOR 10ns;

    END PROCESS;
END Behavioral;