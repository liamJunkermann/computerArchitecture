----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/30/2020 12:16:23 PM
-- Design Name: 
-- Module Name: datapath_tb - Behavioral
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


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity datapath_tb is
--  Port ( );
end datapath_tb;

architecture Behavioral of datapath_tb is
    component datapath
        PORT (
        data_in, constant_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
        control : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
        Clk : IN STD_LOGIC;
        address_out, data_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
        v, c, n, z : OUT STD_LOGIC
        );
     end component;
     
     signal data_in, constant_in, address_out, data_out : STD_LOGIC_VECTOR(31 downto 0);
     signal control: STD_LOGIC_VECTOR(25 downto 0);
     signal v, c, n, z, Clk: STD_LOGIC;
     
     constant Clk_period : time := 10 ns;
begin

    uut: datapath port map (
          data_in => data_in,
          constant_in => constant_in,
          control => control,
          Clk => Clk,
          address_out => address_out,
          data_out => data_out,
          v => v,
          c => c,
          n => n,
          z => z
    );
    
    Clk_process: process
    begin
       Clk <= '0';
       wait for Clk_period/2;
       Clk <= '1';
       wait for Clk_period/2;
    end process;
    
    stim_proc: process
    begin
        data_in <= x"AAAAAAAA";
        constant_in <= x"00000000";
--        control <= "0000000000000000000000000";
        control <= "00000000000000000100000011";
        
        wait for 50ns;
        
        data_in <= x"FFFFFFFF";
        control <= "00010000000000000100000011";
        
        wait for 50ns;
        control <= "00010000000000001100000011";
        
        wait for 50ns;
        control <= "00000000100000000000000000";
    end process;



end Behavioral;
