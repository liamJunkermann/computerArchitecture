----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/31/2020 03:56:31 PM
-- Design Name: 
-- Module Name: memory_tb - Behavioral
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
USE IEEE.std_logic_arith.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

ENTITY memory_tb IS
    --  Port ( );
END memory_tb;

ARCHITECTURE Behavioral OF memory_tb IS
    COMPONENT memory
        PORT (
            address : IN unsigned(31 DOWNTO 0);
            write_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
            MemWrite, Clk : IN STD_LOGIC;
            read_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
        );
    END COMPONENT;

    SIGNAL address : unsigned(31 DOWNTO 0) := (OTHERS => '0');
    SIGNAL write_data, read_data : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL MemWrite, Clk : STD_LOGIC;
BEGIN
    uut : memory PORT MAP(
        address => address,
        write_data => write_data,
        MemWrite => MemWrite,
        Clk => Clk,
        read_data => read_data
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
        MemWrite <= '0';
        write_data <= x"00000000";
        WAIT FOR 10ns;
        address <= x"00000001";

        WAIT FOR 10ns;
        address <= x"00000010";

    END PROCESS;
END Behavioral;