----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/13/2022 10:55:12 AM
-- Design Name: 
-- Module Name: div_tb - Behavioral
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

entity div_tb is
--  Port ( );
end div_tb;

architecture Behavioral of div_tb is
    component delitelj is
     Port ( clk : in STD_LOGIC;
           op1 : in STD_LOGIC_VECTOR (31 downto 0);
           op2 : in STD_LOGIC_VECTOR (31 downto 0);
           op1_valid : in STD_LOGIC;
           op2_valid : in STD_LOGIC;
           y : out STD_LOGIC_VECTOR (31 downto 0);
           valid : out STD_LOGIC);
    end component delitelj;
    
    signal clk: std_logic;
    signal op1_valid, op2_valid: std_logic;
    signal op1, op2, y: STD_LOGIC_VECTOR(31 DOWNTO 0);
    signal valid_y: std_logic;
begin
    duv: delitelj
    port map(
        clk => clk,
        op1_valid  => op1_valid, 
        op1  => op1,
        op2_valid  =>op2_valid ,
        op2  => op2,
        valid  => valid_y,
        y  => y
    );

op1_valid <= '1';
op2_valid <= '1';

clk_gen: process
begin
    clk <= '0', '1' after 100 ns;
    wait for 200 ns;
end process;

stim_gen: process
begin
--op1 <= "00000011001" & "000000000000000000000";
--op2 <= "00000000100" & "000000000000000000000";

wait;
end process;
end Behavioral;
