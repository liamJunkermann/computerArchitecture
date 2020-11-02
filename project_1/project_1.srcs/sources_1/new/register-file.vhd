----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/01/2020 08:49:45 AM
-- Design Name: 
-- Module Name: register-file - Behavioral
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

ENTITY registerFile IS
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
END registerFile;

ARCHITECTURE Behavioral OF registerFile IS

    -- Components
    COMPONENT register32
        PORT (
            data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
            load : IN STD_LOGIC;
            clear : IN STD_LOGIC;
            clk : IN STD_LOGIC;
            Q : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
        );
    END COMPONENT;

    COMPONENT decoder_mux
        PORT (
            wr_index : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
            q0 : OUT STD_LOGIC;
            q1 : OUT STD_LOGIC;
            q2 : OUT STD_LOGIC;
            q3 : OUT STD_LOGIC;
            q4 : OUT STD_LOGIC;
            q5 : OUT STD_LOGIC;
            q6 : OUT STD_LOGIC;
            q7 : OUT STD_LOGIC;
            q8 : OUT STD_LOGIC;
            q9 : OUT STD_LOGIC;
            q10 : OUT STD_LOGIC;
            q11 : OUT STD_LOGIC;
            q12 : OUT STD_LOGIC;
            q13 : OUT STD_LOGIC;
            q14 : OUT STD_LOGIC;
            q15 : OUT STD_LOGIC;
            q16 : OUT STD_LOGIC;
            q17 : OUT STD_LOGIC;
            q18 : OUT STD_LOGIC;
            q19 : OUT STD_LOGIC;
            q20 : OUT STD_LOGIC;
            q21 : OUT STD_LOGIC;
            q22 : OUT STD_LOGIC;
            q23 : OUT STD_LOGIC;
            q24 : OUT STD_LOGIC;
            q25 : OUT STD_LOGIC;
            q26 : OUT STD_LOGIC;
            q27 : OUT STD_LOGIC;
            q28 : OUT STD_LOGIC;
            q29 : OUT STD_LOGIC;
            q30 : OUT STD_LOGIC;
            q31 : OUT STD_LOGIC
        );
    END COMPONENT;

    COMPONENT mux2_32
        PORT (
            src : IN STD_LOGIC;
            In0 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
            In1 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
            Z : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
        );
    END COMPONENT;

    COMPONENT mux32_32bit
        PORT (
            src : IN STD_LOGIC_VECTOR(4 TO 0);
            in0 : IN STD_LOGIC_VECTOR(31 TO 0);
            in1 : IN STD_LOGIC_VECTOR(31 TO 0);
            in2 : IN STD_LOGIC_VECTOR(31 TO 0);
            in3 : IN STD_LOGIC_VECTOR(31 TO 0);
            in4 : IN STD_LOGIC_VECTOR(31 TO 0);
            in5 : IN STD_LOGIC_VECTOR(31 TO 0);
            in6 : IN STD_LOGIC_VECTOR(31 TO 0);
            in7 : IN STD_LOGIC_VECTOR(31 TO 0);
            in8 : IN STD_LOGIC_VECTOR(31 TO 0);
            in9 : IN STD_LOGIC_VECTOR(31 TO 0);
            in10 : IN STD_LOGIC_VECTOR(31 TO 0);
            in11 : IN STD_LOGIC_VECTOR(31 TO 0);
            in12 : IN STD_LOGIC_VECTOR(31 TO 0);
            in13 : IN STD_LOGIC_VECTOR(31 TO 0);
            in14 : IN STD_LOGIC_VECTOR(31 TO 0);
            in15 : IN STD_LOGIC_VECTOR(31 TO 0);
            in16 : IN STD_LOGIC_VECTOR(31 TO 0);
            in17 : IN STD_LOGIC_VECTOR(31 TO 0);
            in18 : IN STD_LOGIC_VECTOR(31 TO 0);
            in19 : IN STD_LOGIC_VECTOR(31 TO 0);
            in20 : IN STD_LOGIC_VECTOR(31 TO 0);
            in21 : IN STD_LOGIC_VECTOR(31 TO 0);
            in22 : IN STD_LOGIC_VECTOR(31 TO 0);
            in23 : IN STD_LOGIC_VECTOR(31 TO 0);
            in24 : IN STD_LOGIC_VECTOR(31 TO 0);
            in25 : IN STD_LOGIC_VECTOR(31 TO 0);
            in26 : IN STD_LOGIC_VECTOR(31 TO 0);
            in27 : IN STD_LOGIC_VECTOR(31 TO 0);
            in28 : IN STD_LOGIC_VECTOR(31 TO 0);
            in29 : IN STD_LOGIC_VECTOR(31 TO 0);
            in30 : IN STD_LOGIC_VECTOR(31 TO 0);
            in31 : IN STD_LOGIC_VECTOR(31 TO 0);
            z : OUT STD_LOGIC_VECTOR(31 TO 0)
        );
    END COMPONENT;

    -- Inner Signals
    SIGNAL decoderq0, decoderq1, decoderq2, decoderq3, decoderq4, decoderq5, decoderq6, decoderq7, decoderq8, decoderq9, decoderq10, decoderq11, decoderq12, decoderq13, decoderq14, decoderq15, decoderq16, decoderq17, decoderq18, decoderq19, decoderq20, decoderq21, decoderq22, decoderq23, decoderq24, decoderq25, decoderq26, decoderq27, decoderq28, decoderq29, decoderq30, decoderq31 : STD_LOGIC;

    SIGNAL sigReg0, sigReg1, sigReg2, sigReg3, sigReg4, sigReg5, sigReg6, sigReg7, sigReg8, sigReg9, sigReg10, sigReg11, sigReg12, sigReg13, sigReg14, sigReg15, sigReg16, sigReg17, sigReg18, sigReg19, sigReg20, sigReg21, sigReg22, sigReg23, sigReg24, sigReg25, sigReg26, sigReg27, sigReg28, sigReg29, sigReg30, sigReg31 : STD_LOGIC_VECTOR(31 DOWNTO 0);

    SIGNAL mux32Z : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL mux2z : STD_LOGIC_VECTOR(31 DOWNTO 0);

BEGIN
    -- PROCESS (
    --     shift_src,
    --     write_reg,
    --     write_src,
    --     data_src,
    --     clk
    --     )
    -- BEGIN

    decoder : decoder_mux PORT MAP(
        wr_index => write_reg,
        q0 => decoderq0,
        q1 => decoderq1,
        q2 => decoderq2,
        q3 => decoderq3,
        q4 => decoderq4,
        q5 => decoderq5,
        q6 => decoderq6,
        q7 => decoderq7,
        q8 => decoderq8,
        q9 => decoderq9,
        q10 => decoderq10,
        q11 => decoderq11,
        q12 => decoderq12,
        q13 => decoderq13,
        q14 => decoderq14,
        q15 => decoderq15,
        q16 => decoderq16,
        q17 => decoderq17,
        q18 => decoderq18,
        q19 => decoderq19,
        q20 => decoderq20,
        q21 => decoderq21,
        q22 => decoderq22,
        q23 => decoderq23,
        q24 => decoderq24,
        q25 => decoderq25,
        q26 => decoderq26,
        q27 => decoderq27,
        q28 => decoderq28,
        q29 => decoderq29,
        q30 => decoderq30,
        q31 => decoderq31
    );

    mux2_32bit : mux2_32 PORT MAP(
        src => write_src,
        In0 => data_src,
        In1 => mux32Z,
        Z => mux2z
    );

    mux32_1 : mux32_32bit PORT MAP(
        src => shift_src,
        in0 => sigReg0,
        in1 => sigReg1,
        in2 => sigReg2,
        in3 => sigReg3,
        in4 => sigReg4,
        in5 => sigReg5,
        in6 => sigReg6,
        in7 => sigReg7,
        in8 => sigReg8,
        in9 => sigReg9,
        in10 => sigReg10,
        in11 => sigReg11,
        in12 => sigReg12,
        in13 => sigReg13,
        in14 => sigReg14,
        in15 => sigReg15,
        in16 => sigReg16,
        in17 => sigReg17,
        in18 => sigReg18,
        in19 => sigReg19,
        in20 => sigReg20,
        in21 => sigReg21,
        in22 => sigReg22,
        in23 => sigReg23,
        in24 => sigReg24,
        in25 => sigReg25,
        in26 => sigReg26,
        in27 => sigReg27,
        in28 => sigReg28,
        in29 => sigReg29,
        in30 => sigReg30,
        in31 => sigReg31,
        z => mux32Z
    );

    reg00 : register32 PORT MAP(
        data => mux2z,
        load => decoderq0,
        clear => '0',
        clk => clk,
        Q => sigReg0
    );
    reg01 : register32 PORT MAP(
        data => mux2z,
        load => decoderq1,
        clear => '0',
        clk => clk,
        Q => sigReg1
    );
    reg02 : register32 PORT MAP(
        data => mux2z,
        load => decoderq2,
        clear => '0',
        clk => clk,
        Q => sigReg2
    );
    reg03 : register32 PORT MAP(
        data => mux2z,
        load => decoderq3,
        clear => '0',
        clk => clk,
        Q => sigReg3
    );
    reg04 : register32 PORT MAP(
        data => mux2z,
        load => decoderq4,
        clear => '0',
        clk => clk,
        Q => sigReg4
    );
    reg05 : register32 PORT MAP(
        data => mux2z,
        load => decoderq5,
        clear => '0',
        clk => clk,
        Q => sigReg5
    );
    reg06 : register32 PORT MAP(
        data => mux2z,
        load => decoderq6,
        clear => '0',
        clk => clk,
        Q => sigReg6
    );
    reg07 : register32 PORT MAP(
        data => mux2z,
        load => decoderq7,
        clear => '0',
        clk => clk,
        Q => sigReg7
    );
    reg08 : register32 PORT MAP(
        data => mux2z,
        load => decoderq8,
        clear => '0',
        clk => clk,
        Q => sigReg8
    );
    reg09 : register32 PORT MAP(
        data => mux2z,
        load => decoderq9,
        clear => '0',
        clk => clk,
        Q => sigReg9
    );
    reg10 : register32 PORT MAP(
        data => mux2z,
        load => decoderq10,
        clear => '0',
        clk => clk,
        Q => sigReg10
    );
    reg11 : register32 PORT MAP(
        data => mux2z,
        load => decoderq11,
        clear => '0',
        clk => clk,
        Q => sigReg11
    );
    reg12 : register32 PORT MAP(
        data => mux2z,
        load => decoderq12,
        clear => '0',
        clk => clk,
        Q => sigReg12
    );
    reg13 : register32 PORT MAP(
        data => mux2z,
        load => decoderq13,
        clear => '0',
        clk => clk,
        Q => sigReg13
    );
    reg14 : register32 PORT MAP(
        data => mux2z,
        load => decoderq14,
        clear => '0',
        clk => clk,
        Q => sigReg14
    );
    reg15 : register32 PORT MAP(
        data => mux2z,
        load => decoderq15,
        clear => '0',
        clk => clk,
        Q => sigReg15
    );
    reg16 : register32 PORT MAP(
        data => mux2z,
        load => decoderq16,
        clear => '0',
        clk => clk,
        Q => sigReg16
    );
    reg17 : register32 PORT MAP(
        data => mux2z,
        load => decoderq17,
        clear => '0',
        clk => clk,
        Q => sigReg17
    );
    reg18 : register32 PORT MAP(
        data => mux2z,
        load => decoderq18,
        clear => '0',
        clk => clk,
        Q => sigReg18
    );
    reg19 : register32 PORT MAP(
        data => mux2z,
        load => decoderq19,
        clear => '0',
        clk => clk,
        Q => sigReg19
    );
    reg20 : register32 PORT MAP(
        data => mux2z,
        load => decoderq20,
        clear => '0',
        clk => clk,
        Q => sigReg20
    );
    reg21 : register32 PORT MAP(
        data => mux2z,
        load => decoderq21,
        clear => '0',
        clk => clk,
        Q => sigReg21
    );
    reg22 : register32 PORT MAP(
        data => mux2z,
        load => decoderq22,
        clear => '0',
        clk => clk,
        Q => sigReg22
    );
    reg23 : register32 PORT MAP(
        data => mux2z,
        load => decoderq23,
        clear => '0',
        clk => clk,
        Q => sigReg23
    );
    reg24 : register32 PORT MAP(
        data => mux2z,
        load => decoderq24,
        clear => '0',
        clk => clk,
        Q => sigReg24
    );
    reg25 : register32 PORT MAP(
        data => mux2z,
        load => decoderq25,
        clear => '0',
        clk => clk,
        Q => sigReg25
    );
    reg26 : register32 PORT MAP(
        data => mux2z,
        load => decoderq26,
        clear => '0',
        clk => clk,
        Q => sigReg26
    );
    reg27 : register32 PORT MAP(
        data => mux2z,
        load => decoderq27,
        clear => '0',
        clk => clk,
        Q => sigReg27
    );
    reg28 : register32 PORT MAP(
        data => mux2z,
        load => decoderq28,
        clear => '0',
        clk => clk,
        Q => sigReg28
    );
    reg29 : register32 PORT MAP(
        data => mux2z,
        load => decoderq29,
        clear => '0',
        clk => clk,
        Q => sigReg29
    );
    reg30 : register32 PORT MAP(
        data => mux2z,
        load => decoderq30,
        clear => '0',
        clk => clk,
        Q => sigReg30
    );
    reg31 : register32 PORT MAP(
        data => mux2z,
        load => decoderq31,
        clear => '0',
        clk => clk,
        Q => sigReg31
    );

    outReg0 <= sigReg0;
    outReg1 <= sigReg1;
    outReg2 <= sigReg2;
    outReg3 <= sigReg3;
    outReg4 <= sigReg4;
    outReg5 <= sigReg5;
    outReg6 <= sigReg6;
    outReg7 <= sigReg7;
    outReg8 <= sigReg8;
    outReg9 <= sigReg9;
    outReg10 <= sigReg10;
    outReg11 <= sigReg11;
    outReg12 <= sigReg12;
    outReg13 <= sigReg13;
    outReg14 <= sigReg14;
    outReg15 <= sigReg15;
    outReg16 <= sigReg16;
    outReg17 <= sigReg17;
    outReg18 <= sigReg18;
    outReg19 <= sigReg19;
    outReg20 <= sigReg20;
    outReg21 <= sigReg21;
    outReg22 <= sigReg22;
    outReg23 <= sigReg23;
    outReg24 <= sigReg24;
    outReg25 <= sigReg25;
    outReg26 <= sigReg26;
    outReg27 <= sigReg27;
    outReg28 <= sigReg28;
    outReg29 <= sigReg29;
    outReg30 <= sigReg30;
    outReg31 <= sigReg31;
    -- END PROCESS;
END Behavioral;