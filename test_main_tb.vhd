----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:56:33 01/14/2020 
-- Design Name: 
-- Module Name:    test_main_tb - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
use IEEE.NUMERIC_STD.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity test_main_tb is
end test_main_tb;

architecture Behavioral of test_main_tb is
	
component test_main_mod
    port(sel : in std_logic_vector(4 downto 0);
         a,b : in std_logic_vector(7 downto 0);
         Cin : in std_logic;
         y   : out std_logic_vector(7 downto 0));
   end component;

   --Inputs
   signal sel : std_logic_vector(4 downto 0) := (others => '0');
   signal a : std_logic_vector(7 downto 0) := (others => '0');
   signal b : std_logic_vector(7 downto 0) := (others => '0');
   signal Cin : std_logic := '0';
   --Outputs
   signal y : std_logic_vector(7 downto 0);
   
  
begin
 
main : test_main_mod port map(sel, a, b, Cin, y);
	
process --sel signal (5bits)
    begin
       sel	<=	"00000";		wait for 10 ns;
       sel	<=	"00001";		wait for 10 ns;
       sel	<=	"00010";		wait for 10 ns;
       sel	<=	"00011";		wait for 10 ns;
       sel	<=	"00100";		wait for 10 ns;
       sel	<=	"00101";		wait for 10 ns;
       sel	<=	"00110";		wait for 10 ns;
       sel	<=	"00111";		wait for 10 ns;
		 sel	<=	"00000";		wait for 10 ns;
       sel	<=	"00001";		wait for 10 ns;
       sel	<=	"00010";		wait for 10 ns;
       sel	<=	"00011";		wait for 10 ns;
       sel	<=	"00100";		wait for 10 ns;
       sel	<=	"00101";		wait for 10 ns;
       sel	<=	"00110";		wait for 10 ns;
       sel	<=	"00111";		wait for 10 ns; --160ns
		 
		 
       sel	<=	"01000";		wait for 10 ns;
		 sel	<= "01001";		wait for 10 ns;
		 sel	<= "01010";		wait for 10 ns;
		 sel	<=	"01011";		wait for 10 ns;
		 sel	<= "01100";		wait for 10 ns;
		 sel	<= "01101";		wait for 10 ns;
		 sel	<=	"01110";		wait for 10 ns;
		 sel	<= "01111";		wait for 10 ns;
		 sel	<=	"01000";		wait for 10 ns;
		 sel	<= "01001";		wait for 10 ns;
		 sel	<= "01010";		wait for 10 ns;
		 sel	<=	"01011";		wait for 10 ns;
		 sel	<= "01100";		wait for 10 ns;
		 sel	<= "01101";		wait for 10 ns;
		 sel	<=	"01110";		wait for 10 ns;
		 sel	<= "01111";		wait for 10 ns; --160ns
		 
       sel	<=	"10000";		wait for 10 ns;
       sel	<=	"10001";		wait for 10 ns;
		 sel	<= "10010";		wait for 10 ns;
		 sel	<= "10011";		wait for 10 ns;
		 sel	<= "10100";		wait for 10 ns;
		 sel	<= "10101";		wait for 10 ns;
		 sel	<= "10110";		wait for 10 ns;
		 sel	<= "10111";		wait for 10 ns;		 
		 sel	<=	"10000";		wait for 10 ns;
       sel	<=	"10001";		wait for 10 ns;
		 sel	<= "10010";		wait for 10 ns;
		 sel	<= "10011";		wait for 10 ns;
		 sel	<= "10100";		wait for 10 ns;
		 sel	<= "10101";		wait for 10 ns;
		 sel	<= "10110";		wait for 10 ns;
		 sel	<= "10111";		wait for 10 ns;  --160ns
  end process;
  
process --a signal (8bits)
    begin
       a  <= "00101011"; wait;
  end process;
  
process --b signal (8bits)
    begin
  		b <= "00100011"; wait;
  end process;
  
process --cin (1bit)
    begin
       cin <= '0' ; wait for 80 ns;
       cin <= '1' ; wait for 80 ns;
		 cin <= '0' ; wait for 80 ns;
       cin <= '1' ; wait for 80 ns;
		 cin <= '0' ; wait for 80 ns;
       cin <= '1' ; wait for 80 ns;
       cin <= '0' ; wait for 10 ns;
       cin <= '1' ; wait for 10 ns;
       cin <= '0' ; wait for 10 ns;
       cin <= '1' ; wait for 10 ns;
       cin <= '1' ; wait for 10 ns;
       cin <= '1' ; wait for 10 ns;
       cin <= '0' ; wait;
    end process;


end Behavioral;

