----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/02/2021 07:18:17 PM
-- Design Name: 
-- Module Name: microprocessor_tb - Behavioral
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

ENTITY microprocessor_tb IS
    --  Port ( );
END microprocessor_tb;

ARCHITECTURE Behavioral OF microprocessor_tb IS
    COMPONENT microprocessor
        PORT (
            Clk, reset : IN STD_LOGIC;
            pc_count : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
            instruction : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
    END COMPONENT;
    SIGNAL Clk, reset : STD_LOGIC;
    SIGNAL pc_count, instruct : STD_LOGIC_VECTOR(31 DOWNTO 0);
BEGIN

    uut : microprocessor PORT MAP(
        Clk => Clk,
        reset => reset,
        pc_count => pc_count,
        instruction => instruct
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
        WAIT FOR 5ns;
        reset <= '0';
        WAIT FOR 100ns;

        WAIT;
    END PROCESS;

END Behavioral;