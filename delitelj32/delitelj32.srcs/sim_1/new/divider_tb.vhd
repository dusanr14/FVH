----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/13/2022 11:40:23 AM
-- Design Name: 
-- Module Name: divider_tb - Behavioral
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

entity divider_tb is
--  Port ( );
end divider_tb;

architecture Behavioral of divider_tb is

component delitelj is
port(
           clk : in STD_LOGIC;
           op1 : in STD_LOGIC_VECTOR (31 downto 0);
           op2 : in STD_LOGIC_VECTOR (31 downto 0);
           op1_valid : in STD_LOGIC;
           op2_valid : in STD_LOGIC;
           y : out STD_LOGIC_VECTOR (31 downto 0);
           valid : out STD_LOGIC
);
end component delitelj;
signal op1_s, op2_s, y_s: STD_LOGIC_VECTOR (31 downto 0);
signal clk, op1_valid_s, op2_valid_s, valid_s: std_logic;

begin
    duv: delitelj
    port map(
        clk => clk,
        op1 => op1_s ,
        op2 => op2_s,
        op1_valid => op1_valid_s,
        op2_valid => op2_valid_s,
        y => y_s,
        valid => valid_s
    );

op1_valid_s <= '1';
op2_valid_s <= '1';

clk_gen: process
    begin
    clk <= '0', '1' after 100 ns;
    wait for 200 ns;
end process;

stim_gen: process
begin
    --                   .
    --op1_s <= "00000001000000000000000000000000";
    --op2_s <= "00000000010000000000000000000000";
    op2_s <= "0000000" &"1000"&"0"&x"00000";
    op1_s <= "0000000" &"0010"&"0"&x"00000";
wait;
end process;
end Behavioral;
