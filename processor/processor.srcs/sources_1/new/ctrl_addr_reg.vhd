----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/01/2021 03:37:18 PM
-- Design Name: 
-- Module Name: ctrl_addr_reg - Behavioral
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

ENTITY ctrl_addr_reg IS
    PORT (
        addr_in : IN STD_LOGIC_VECTOR (16 DOWNTO 0);
        mux_ctrl, Clk, reset : IN STD_LOGIC;
        addr_out : OUT STD_LOGIC_VECTOR (16 DOWNTO 0));
END ctrl_addr_reg;

ARCHITECTURE Behavioral OF ctrl_addr_reg IS

BEGIN

    PROCESS (mux_ctrl, Clk)
        VARIABLE current_addr : INTEGER := 0;
    BEGIN
        IF (reset = '1') THEN
            current_addr := 0;
            addr_out <= conv_std_logic_vector(current_addr, addr_out'length);
        ELSIF (rising_edge(Clk)) THEN
            IF (mux_ctrl = '1') THEN
                addr_out <= addr_in;
                current_addr := conv_integer(addr_in);
            ELSE
                current_addr := current_addr + 1;
                addr_out <= conv_std_logic_vector(current_addr, addr_out'length);
            END IF;
        END IF;
    END PROCESS;

END Behavioral;