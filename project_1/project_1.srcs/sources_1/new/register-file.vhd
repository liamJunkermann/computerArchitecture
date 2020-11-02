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
    SIGNAL decodeq0 : STD_LOGIC;
    SIGNAL decodeq1 : STD_LOGIC;
    SIGNAL decodeq2 : STD_LOGIC;
    SIGNAL decodeq3 : STD_LOGIC;
    SIGNAL decodeq4 : STD_LOGIC;
    SIGNAL decodeq5 : STD_LOGIC;
    SIGNAL decodeq6 : STD_LOGIC;
    SIGNAL decodeq7 : STD_LOGIC;
    SIGNAL decodeq8 : STD_LOGIC;
    SIGNAL decodeq9 : STD_LOGIC;
    SIGNAL decodeq10 : STD_LOGIC;
    SIGNAL decodeq11 : STD_LOGIC;
    SIGNAL decodeq12 : STD_LOGIC;
    SIGNAL decodeq13 : STD_LOGIC;
    SIGNAL decodeq14 : STD_LOGIC;
    SIGNAL decodeq15 : STD_LOGIC;
    SIGNAL decodeq16 : STD_LOGIC;
    SIGNAL decodeq17 : STD_LOGIC;
    SIGNAL decodeq18 : STD_LOGIC;
    SIGNAL decodeq19 : STD_LOGIC;
    SIGNAL decodeq20 : STD_LOGIC;
    SIGNAL decodeq21 : STD_LOGIC;
    SIGNAL decodeq22 : STD_LOGIC;
    SIGNAL decodeq23 : STD_LOGIC;
    SIGNAL decodeq24 : STD_LOGIC;
    SIGNAL decodeq25 : STD_LOGIC;
    SIGNAL decodeq26 : STD_LOGIC;
    SIGNAL decodeq27 : STD_LOGIC;
    SIGNAL decodeq28 : STD_LOGIC;
    SIGNAL decodeq29 : STD_LOGIC;
    SIGNAL decodeq30 : STD_LOGIC;
    SIGNAL decodeq31 : STD_LOGIC;

    SIGNAL sigReg0 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL sigReg1 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL sigReg2 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL sigReg3 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL sigReg4 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL sigReg5 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL sigReg6 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL sigReg7 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL sigReg8 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL sigReg9 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL sigReg10 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL sigReg11 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL sigReg12 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL sigReg13 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL sigReg14 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL sigReg15 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL sigReg16 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL sigReg17 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL sigReg18 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL sigReg19 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL sigReg20 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL sigReg21 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL sigReg22 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL sigReg23 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL sigReg24 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL sigReg25 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL sigReg26 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL sigReg27 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL sigReg28 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL sigReg29 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL sigReg30 : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL sigReg31 : STD_LOGIC_VECTOR(31 DOWNTO 0);

    SIGNAL mux32Z : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL mux2z : STD_LOGIC_VECTOR(31 DOWNTO 0);

BEGIN
    PROCESS (
        shift_src,
        write_reg,
        write_src,
        data_src,
        clk
        )
    BEGIN

        decoder : decoder_mux PORT MAP(
            write_reg => wr_index,
            decoderq0 => q0,
            decorderq1 => q1,
            decorderq2 => q2,
            decorderq3 => q3,
            decorderq4 => q4,
            decorderq5 => q5,
            decorderq6 => q6,
            decorderq7 => q7,
            decorderq8 => q8,
            decorderq9 => q9,
            decorderq10 => q10,
            decorderq11 => q11,
            decorderq12 => q12,
            decorderq13 => q13,
            decorderq14 => q14,
            decorderq15 => q15,
            decorderq16 => q16,
            decorderq17 => q17,
            decorderq18 => q18,
            decorderq19 => q19,
            decorderq20 => q20,
            decorderq21 => q21,
            decorderq22 => q22,
            decorderq23 => q23,
            decorderq24 => q24,
            decorderq25 => q25,
            decorderq26 => q26,
            decorderq27 => q27,
            decorderq28 => q28,
            decorderq29 => q29,
            decorderq30 => q30,
            decorderq31 => q31
        );

        mux2_32bit : mux2_32 PORT MAP(
            write_src => src,
            data_src => In0,
            mux32Z => In1,
            mux2z => Z
        );

        mux32_32bit : mux32_32bit PORT MAP(
            shift_src => src,
            sigReg0 => in0,
            sigReg1 => in1,
            sigReg2 => in2,
            sigReg3 => in3,
            sigReg4 => in4,
            sigReg5 => in5,
            sigReg6 => in6,
            sigReg7 => in7,
            sigReg8 => in8,
            sigReg9 => in9,
            sigReg10 => in10,
            sigReg11 => in11,
            sigReg12 => in12,
            sigReg13 => in13,
            sigReg14 => in14,
            sigReg15 => in15,
            sigReg16 => in16,
            sigReg17 => in17,
            sigReg18 => in18,
            sigReg19 => in19,
            sigReg20 => in20,
            sigReg21 => in21,
            sigReg22 => in22,
            sigReg23 => in23,
            sigReg24 => in24,
            sigReg25 => in25,
            sigReg26 => in26,
            sigReg27 => in27,
            sigReg28 => in28,
            sigReg29 => in29,
            sigReg30 => in30,
            sigReg31 => in31,
            mux32Z => z
        );

        reg0 : register32 PORT MAP(
            mux2z => data,
            decoderq0 => load,
            '0' => clear,
            clk => clk,
            sigReg0 => Q
        );
        reg1 : register32 PORT MAP(
            mux2z => data,
            decoderq0 => load,
            '0' => clear,
            clk => clk,
            sigReg1 => Q
        );
        reg2 : register32 PORT MAP(
            mux2z => data,
            decoderq0 => load,
            '0' => clear,
            clk => clk,
            sigReg2 => Q
        )
        reg3 : register32 PORT MAP(
            mux2z => data,
            decoderq0 => load,
            '0' => clear,
            clk => clk,
            sigReg3 => Q
        )
        reg4 : register32 PORT MAP(
            mux2z => data,
            decoderq0 => load,
            '0' => clear,
            clk => clk,
            sigReg4 => Q
        )
        reg5 : register32 PORT MAP(
            mux2z => data,
            decoderq0 => load,
            '0' => clear,
            clk => clk,
            sigReg5 => Q
        )
        reg6 : register32 PORT MAP(
            mux2z => data,
            decoderq0 => load,
            '0' => clear,
            clk => clk,
            sigReg6 => Q
        )
        reg7 : register32 PORT MAP(
            mux2z => data,
            decoderq0 => load,
            '0' => clear,
            clk => clk,
            sigReg7 => Q
        )
        reg8 : register32 PORT MAP(
            mux2z => data,
            decoderq0 => load,
            '0' => clear,
            clk => clk,
            sigReg8 => Q
        )
        reg9 : register32 PORT MAP(
            mux2z => data,
            decoderq0 => load,
            '0' => clear,
            clk => clk,
            sigReg9 => Q
        )
        reg10 : register32 PORT MAP(
            mux2z => data,
            decoderq0 => load,
            '0' => clear,
            clk => clk,
            sigReg10 => Q
        )
        reg11 : register32 PORT MAP(
            mux2z => data,
            decoderq0 => load,
            '0' => clear,
            clk => clk,
            sigReg11 => Q
        )
        reg12 : register32 PORT MAP(
            mux2z => data,
            decoderq0 => load,
            '0' => clear,
            clk => clk,
            sigReg12 => Q
        )
        reg13 : register32 PORT MAP(
            mux2z => data,
            decoderq0 => load,
            '0' => clear,
            clk => clk,
            sigReg13 => Q
        )
        reg14 : register32 PORT MAP(
            mux2z => data,
            decoderq0 => load,
            '0' => clear,
            clk => clk,
            sigReg14 => Q
        )
        reg15 : register32 PORT MAP(
            mux2z => data,
            decoderq0 => load,
            '0' => clear,
            clk => clk,
            sigReg15 => Q
        )
        reg16 : register32 PORT MAP(
            mux2z => data,
            decoderq0 => load,
            '0' => clear,
            clk => clk,
            sigReg16 => Q
        )
        reg17 : register32 PORT MAP(
            mux2z => data,
            decoderq0 => load,
            '0' => clear,
            clk => clk,
            sigReg17 => Q
        )
        reg18 : register32 PORT MAP(
            mux2z => data,
            decoderq0 => load,
            '0' => clear,
            clk => clk,
            sigReg18 => Q
        )
        reg19 : register32 PORT MAP(
            mux2z => data,
            decoderq0 => load,
            '0' => clear,
            clk => clk,
            sigReg19 => Q
        )
        reg20 : register32 PORT MAP(
            mux2z => data,
            decoderq0 => load,
            '0' => clear,
            clk => clk,
            sigReg20 => Q
        )
        reg21 : register32 PORT MAP(
            mux2z => data,
            decoderq0 => load,
            '0' => clear,
            clk => clk,
            sigReg21 => Q
        )
        reg22 : register32 PORT MAP(
            mux2z => data,
            decoderq0 => load,
            '0' => clear,
            clk => clk,
            sigReg22 => Q
        )
        reg23 : register32 PORT MAP(
            mux2z => data,
            decoderq0 => load,
            '0' => clear,
            clk => clk,
            sigReg23 => Q
        )
        reg24 : register32 PORT MAP(
            mux2z => data,
            decoderq0 => load,
            '0' => clear,
            clk => clk,
            sigReg24 => Q
        )
        reg25 : register32 PORT MAP(
            mux2z => data,
            decoderq0 => load,
            '0' => clear,
            clk => clk,
            sigReg25 => Q
        )
        reg26 : register32 PORT MAP(
            mux2z => data,
            decoderq0 => load,
            '0' => clear,
            clk => clk,
            sigReg26 => Q
        )
        reg27 : register32 PORT MAP(
            mux2z => data,
            decoderq0 => load,
            '0' => clear,
            clk => clk,
            sigReg27 => Q
        )
        reg28 : register32 PORT MAP(
            mux2z => data,
            decoderq0 => load,
            '0' => clear,
            clk => clk,
            sigReg28 => Q
        )
        reg29 : register32 PORT MAP(
            mux2z => data,
            decoderq0 => load,
            '0' => clear,
            clk => clk,
            sigReg29 => Q
        )
        reg30 : register32 PORT MAP(
            mux2z => data,
            decoderq0 => load,
            '0' => clear,
            clk => clk,
            sigReg30 => Q
        )
        reg31 : register32 PORT MAP(
            mux2z => data,
            decoderq0 => load,
            '0' => clear,
            clk => clk,
            sigReg31 => Q
        )

        sigReg0 => outReg0;
        sigReg1 => outReg1;
        sigReg2 => outReg2;
        sigReg3 => outReg3;
        sigReg4 => outReg4;
        sigReg5 => outReg5;
        sigReg6 => outReg6;
        sigReg7 => outReg7;
        sigReg8 => outReg8;
        sigReg9 => outReg9;
        sigReg10 => outReg10;
        sigReg11 => outReg11;
        sigReg12 => outReg12;
        sigReg13 => outReg13;
        sigReg14 => outReg14;
        sigReg15 => outReg15;
        sigReg16 => outReg16;
        sigReg17 => outReg17;
        sigReg18 => outReg18;
        sigReg19 => outReg19;
        sigReg20 => outReg20;
        sigReg21 => outReg21;
        sigReg22 => outReg22;
        sigReg23 => outReg23;
        sigReg24 => outReg24;
        sigReg25 => outReg25;
        sigReg26 => outReg26;
        sigReg27 => outReg27;
        sigReg28 => outReg28;
        sigReg29 => outReg29;
        sigReg30 => outReg30;
        sigReg31 => outReg31;
    END PROCESS;
END Behavioral;