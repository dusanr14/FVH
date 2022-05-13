----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/13/2022 11:12:46 AM
-- Design Name: 
-- Module Name: delitelj - Behavioral
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

entity delitelj is
    Port ( clk : in STD_LOGIC;
           op1 : in STD_LOGIC_VECTOR (31 downto 0);
           op2 : in STD_LOGIC_VECTOR (31 downto 0);
           op1_valid : in STD_LOGIC;
           op2_valid : in STD_LOGIC;
           y : out STD_LOGIC_VECTOR (31 downto 0);
           valid : out STD_LOGIC);
end delitelj;

architecture Behavioral of delitelj is
    component div_gen_0 is
    port(aclk : IN STD_LOGIC;
    s_axis_divisor_tvalid : IN STD_LOGIC;
    s_axis_divisor_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axis_dividend_tvalid : IN STD_LOGIC;
    s_axis_dividend_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axis_dout_tvalid : OUT STD_LOGIC;
    m_axis_dout_tdata : OUT STD_LOGIC_VECTOR(55 DOWNTO 0) );
    end component div_gen_0;
    
signal y_pom: STD_LOGIC_VECTOR(55 DOWNTO 0);
begin

    duv: div_gen_0
    port map(
        aclk => clk,
        s_axis_divisor_tvalid  => op1_valid, 
        s_axis_divisor_tdata  => op1,
        s_axis_dividend_tvalid  =>op2_valid ,
        s_axis_dividend_tdata  => op2,
        m_axis_dout_tvalid  => valid,
        m_axis_dout_tdata  => y_pom
    );

    y <= y_pom (31 DOWNTO 0);
end Behavioral;
