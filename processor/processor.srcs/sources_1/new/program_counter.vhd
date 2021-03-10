----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/01/2021 03:37:18 PM
-- Design Name: 
-- Module Name: program_counter - Behavioral
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
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

ENTITY program_counter IS
    PORT (
        prog_ld, prog_inc, Clk, reset : IN STD_LOGIC;
        ext_in : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
        inst_addr : OUT STD_LOGIC_VECTOR (31 DOWNTO 0));
END program_counter;

ARCHITECTURE Behavioral OF program_counter IS

BEGIN

    PROCESS (Clk)

        VARIABLE current_addr : INTEGER := 0;
    BEGIN
        IF (reset = '1') THEN
            inst_addr <= x"00000000";
            current_addr := 0;
        ELSIF (rising_edge(clk)) THEN
            IF (prog_ld = '1') THEN
                current_addr := current_addr + conv_integer(ext_in);
                inst_addr <= conv_std_logic_vector(current_addr, inst_addr'length);
            ELSIF (prog_inc = '1') THEN
                current_addr := current_addr + 1;
                inst_addr <= conv_std_logic_vector(current_addr, inst_addr'length);
            ELSE
                inst_addr <= conv_std_logic_vector(current_addr, inst_addr'length);
            END IF;
        END IF;
    END PROCESS;

END Behavioral;