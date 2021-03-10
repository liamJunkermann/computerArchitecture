----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/03/2021 09:32:26 AM
-- Design Name: 
-- Module Name: instruction_reg_tb - Behavioral
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

ENTITY instruction_reg_tb IS
    --  Port ( );
END instruction_reg_tb;

ARCHITECTURE Behavioral OF instruction_reg_tb IS
    COMPONENT instruction_reg
        PORT (
            inst_ld, Clk : IN STD_LOGIC;
            instruction : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
            opcode : OUT STD_LOGIC_VECTOR (16 DOWNTO 0);
            dest_reg, src_a, src_b : OUT STD_LOGIC_VECTOR (4 DOWNTO 0));
    END COMPONENT;
    SIGNAL inst_ld, Clk : STD_LOGIC;
    SIGNAL instruction : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL opcode : STD_LOGIC_VECTOR(16 DOWNTO 0);
    SIGNAL dest_reg, src_a, src_b : STD_LOGIC_VECTOR (4 DOWNTO 0);
BEGIN

    uut : instruction_reg PORT MAP(
        inst_ld => inst_ld,
        Clk => Clk,
        instruction => instruction,
        opcode => opcode,
        dest_reg => dest_reg,
        src_a => src_a,
        src_b => src_b
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
        inst_ld <= '1';
        instruction <= x"00000000";
        WAIT FOR 10ns;
        inst_ld <= '0';
        instruction <= x"00000001";
        WAIT FOR 10ns;
        inst_ld <= '1';
        WAIT FOR 10ns;
    END PROCESS;
END Behavioral;