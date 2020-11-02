----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/02/2020 01:24:06 PM
-- Design Name: 
-- Module Name: registerFileTB - Behavioral
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

ENTITY registerFileTB IS
    --  Port ( );
END registerFileTB;

ARCHITECTURE Behavioral OF registerFileTB IS
    COMPONENT registerFile
        PORT (
            shift_src : IN STD_LOGIC_VECTOR(4 DOWNTO 0); -- Shift SRC will default with 0
            write_reg : IN STD_LOGIC_VECTOR(4 DOWNTO 0); -- Write Reg address
            write_src : IN STD_LOGIC; -- 0 for data_src, 1 for shift src
            data_src : IN STD_LOGIC_VECTOR(31 DOWNTO 0); -- 32 bit Data Source
            clk : IN STD_LOGIC; -- Clock is either high or low
            outReg0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
            outReg1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
            outReg2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
            outReg3 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
            outReg4 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
            outReg5 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
            outReg6 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
            outReg7 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
            outReg8 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
            outReg9 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
            outReg10 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
            outReg11 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
            outReg12 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
            outReg13 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
            outReg14 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
            outReg15 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
            outReg16 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
            outReg17 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
            outReg18 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
            outReg19 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
            outReg20 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
            outReg21 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
            outReg22 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
            outReg23 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
            outReg24 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
            outReg25 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
            outReg26 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
            outReg27 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
            outReg28 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
            outReg29 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
            outReg30 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
            outReg31 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
        );
    END COMPONENT;

    --inputs
    SIGNAL shift_src : STD_LOGIC_VECTOR(4 DOWNTO 0) := (OTHERS => '0');
    SIGNAL write_reg : STD_LOGIC_VECTOR(4 DOWNTO 0) := (OTHERS => '0');
    SIGNAL write_src : STD_LOGIC := '0';
    SIGNAL data_src : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');

    -- outputs
    SIGNAL outReg0 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL outReg1 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL outReg2 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL outReg3 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL outReg4 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL outReg5 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL outReg6 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL outReg7 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL outReg8 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL outReg9 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL outReg10 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL outReg11 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL outReg12 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL outReg13 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL outReg14 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL outReg15 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL outReg16 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL outReg17 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL outReg18 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL outReg19 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL outReg20 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL outReg21 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL outReg22 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL outReg23 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL outReg24 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL outReg25 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL outReg26 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL outReg27 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL outReg28 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL outReg29 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL outReg30 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL outReg31 : STD_LOGIC_VECTOR(31 DOWNTO 0);

    SIGNAL clk : STD_LOGIC := '0';
    CONSTANT clk_speed : TIME := 10ns;
BEGIN

    uut : registerFile PORT MAP(
        shift_src => shift_src,
        write_reg => write_reg,
        write_src => write_src,
        data_src => data_src,
        clk => clk,
        outReg0 => outReg0,
        outReg1 => outReg1,
        outReg2 => outReg2,
        outReg3 => outReg3,
        outReg4 => outReg4,
        outReg5 => outReg5,
        outReg6 => outReg6,
        outReg7 => outReg7,
        outReg8 => outReg8,
        outReg9 => outReg9,
        outReg10 => outReg10,
        outReg11 => outReg11,
        outReg12 => outReg12,
        outReg13 => outReg13,
        outReg14 => outReg14,
        outReg15 => outReg15,
        outReg16 => outReg16,
        outReg17 => outReg17,
        outReg18 => outReg18,
        outReg19 => outReg19,
        outReg20 => outReg20,
        outReg21 => outReg21,
        outReg22 => outReg22,
        outReg23 => outReg23,
        outReg24 => outReg24,
        outReg25 => outReg25,
        outReg26 => outReg26,
        outReg27 => outReg27,
        outReg28 => outReg28,
        outReg29 => outReg29,
        outReg30 => outReg30,
        outReg31 => outReg31
    );

    clk_process : PROCESS
    BEGIN
        clk <= '0';
        WAIT FOR clk_speed/2;
        clk <= '1';
        WAIT FOR clk_speed/2;
    END PROCESS;

    stim_proc : PROCESS
    BEGIN
        -- Register loading
        data_src <= x"1267f2d";
        shift_src <= "00000";
        write_reg <= "0";
        WAIT FOR 20ns;
        data_src <= x"1267f2c";
        shift_src <= "00000";
        write_reg <= "1";
        WAIT FOR 20ns;
        data_src <= x"1267f2b";
        shift_src <= "00000";
        write_reg <= "10";
        WAIT FOR 20ns;
        data_src <= x"1267f2a";
        shift_src <= "00000";
        write_reg <= "11";
        WAIT FOR 20ns;
        data_src <= x"1267f29";
        shift_src <= "00000";
        write_reg <= "100";
        WAIT FOR 20ns;
        data_src <= x"1267f28";
        shift_src <= "00000";
        write_reg <= "101";
        WAIT FOR 20ns;
        data_src <= x"1267f27";
        shift_src <= "00000";
        write_reg <= "110";
        WAIT FOR 20ns;
        data_src <= x"1267f26";
        shift_src <= "00000";
        write_reg <= "111";
        WAIT FOR 20ns;
        data_src <= x"1267f25";
        shift_src <= "00000";
        write_reg <= "1000";
        WAIT FOR 20ns;
        data_src <= x"1267f24";
        shift_src <= "00000";
        write_reg <= "1001";
        WAIT FOR 20ns;
        data_src <= x"1267f23";
        shift_src <= "00000";
        write_reg <= "1010";
        WAIT FOR 20ns;
        data_src <= x"1267f22";
        shift_src <= "00000";
        write_reg <= "1011";
        WAIT FOR 20ns;
        data_src <= x"1267f21";
        shift_src <= "00000";
        write_reg <= "1100";
        WAIT FOR 20ns;
        data_src <= x"1267f20";
        shift_src <= "00000";
        write_reg <= "1101";
        WAIT FOR 20ns;
        data_src <= x"1267f1f";
        shift_src <= "00000";
        write_reg <= "1110";
        WAIT FOR 20ns;
        data_src <= x"1267f1e";
        shift_src <= "00000";
        write_reg <= "1111";
        WAIT FOR 20ns;
        data_src <= x"1267f1d";
        shift_src <= "00000";
        write_reg <= "10000";
        WAIT FOR 20ns;
        data_src <= x"1267f1c";
        shift_src <= "00000";
        write_reg <= "10001";
        WAIT FOR 20ns;
        data_src <= x"1267f1b";
        shift_src <= "00000";
        write_reg <= "10010";
        WAIT FOR 20ns;
        data_src <= x"1267f1a";
        shift_src <= "00000";
        write_reg <= "10011";
        WAIT FOR 20ns;
        data_src <= x"1267f19";
        shift_src <= "00000";
        write_reg <= "10100";
        WAIT FOR 20ns;
        data_src <= x"1267f18";
        shift_src <= "00000";
        write_reg <= "10101";
        WAIT FOR 20ns;
        data_src <= x"1267f17";
        shift_src <= "00000";
        write_reg <= "10110";
        WAIT FOR 20ns;
        data_src <= x"1267f16";
        shift_src <= "00000";
        write_reg <= "10111";
        WAIT FOR 20ns;
        data_src <= x"1267f15";
        shift_src <= "00000";
        write_reg <= "11000";
        WAIT FOR 20ns;
        data_src <= x"1267f14";
        shift_src <= "00000";
        write_reg <= "11001";
        WAIT FOR 20ns;
        data_src <= x"1267f13";
        shift_src <= "00000";
        write_reg <= "11010";
        WAIT FOR 20ns;
        data_src <= x"1267f12";
        shift_src <= "00000";
        write_reg <= "11011";
        WAIT FOR 20ns;
        data_src <= x"1267f11";
        shift_src <= "00000";
        write_reg <= "11100";
        WAIT FOR 20ns;
        data_src <= x"1267f10";
        shift_src <= "00000";
        write_reg <= "11101";
        WAIT FOR 20ns;
        data_src <= x"1267f0f";
        shift_src <= "00000";
        write_reg <= "11110";
        WAIT FOR 20ns;
        data_src <= x"1267f0e";
        shift_src <= "00000";
        write_reg <= "11111";
        WAIT FOR 20ns;

        -- Register Shifting
        write_src <= '1';
        -- Shift 31 to 30
        shift_src <= "11111";
        write_reg <= "11110";
        WAIT FOR 20ns;
        -- Shift 30 to 29
        shift_src <= "11110";
        write_reg <= "11101";
        WAIT FOR 20ns;
        -- Shift 29 to 28
        shift_src <= "11101";
        write_reg <= "11100";
        WAIT FOR 20ns;
        -- Shift 28 to 27
        shift_src <= "11100";
        write_reg <= "11011";
        WAIT FOR 20ns;
        -- Shift 27 to 26
        shift_src <= "11011";
        write_reg <= "11010";
        WAIT FOR 20ns;
        -- Shift 26 to 25
        shift_src <= "11010";
        write_reg <= "11001";
        WAIT FOR 20ns;
        -- Shift 25 to 24
        shift_src <= "11001";
        write_reg <= "11000";
        WAIT FOR 20ns;
        -- Shift 24 to 23
        shift_src <= "11000";
        write_reg <= "10111";
        WAIT FOR 20ns;
        -- Shift 23 to 22
        shift_src <= "10111";
        write_reg <= "10110";
        WAIT FOR 20ns;
        -- Shift 22 to 21
        shift_src <= "10110";
        write_reg <= "10101";
        WAIT FOR 20ns;
        WAIT;
    END PROCESS;

END Behavioral;