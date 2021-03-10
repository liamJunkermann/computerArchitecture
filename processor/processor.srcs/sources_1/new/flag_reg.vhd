----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/31/2020 12:02:43 PM
-- Design Name: 
-- Module Name: flag_reg - Behavioral
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

ENTITY flag_reg IS
    PORT (
        v_in, c_in, n_in, z_in, flag_load, Clk : IN STD_LOGIC;
        reset : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        flag_out : OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
    );
END flag_reg;

ARCHITECTURE Behavioral OF flag_reg IS
BEGIN

    PROCESS (Clk)
        VARIABLE flags : STD_LOGIC_VECTOR(3 DOWNTO 0);
    BEGIN
        IF (reset(0) = '1') THEN
            flags(0) := '0';
        ELSIF (reset(1) = '1') THEN
            flags(1) := '0';
        ELSIF (reset(2) = '1') THEN
            flags(2) := '0';
        ELSIF (reset(3) = '1') THEN
            flags(3) := '0';
        ELSIF (rising_edge(clk) AND (flag_load = '1')) THEN
            flags(0) := c_in OR '0';
            flags(1) := v_in OR '0';
            flags(2) := z_in OR '0';
            flags(3) := n_in OR '0';
        ELSE
            flags := "0000";
        END IF;
        flag_out <= flags;
    END PROCESS;
END Behavioral;