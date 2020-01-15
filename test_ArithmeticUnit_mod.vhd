----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:09:17 01/14/2020 
-- Design Name: 
-- Module Name:    test_ArithmeticUnit_mod - Behavioral 
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
use IEEE.NUMERIC_STD.All;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity test_ArithmeticUnit_mod is
	port(a, b : in std_logic_vector(7 downto 0);
			Cin : in std_logic;
			Arith_Unit : out std_logic_vector(7 downto 0);
			sel : in std_logic_vector( 1 downto 0 ));
			
end test_ArithmeticUnit_mod;

architecture Behavioral of test_ArithmeticUnit_mod is
begin
	process(a, b, Cin, sel)
		variable src : std_logic_vector(7 downto 0);
		begin
			if(sel = "00") then
				src := (others=>'X');
				Arith_Unit <= a;
				
			elsif(sel = "01") then
				if(Cin = '1') then
					src := std_logic_vector(unsigned(b) + 1);
				else
					src := b;
				end if;
				Arith_Unit <= std_logic_vector(unsigned(a) + unsigned(src));
				
			elsif(sel = "10") then
				if(Cin = '1') then
					src := std_logic_vector(unsigned(not(b)) + 1);
					
				else
					src := std_logic_vector(not(b));
				end if;
				Arith_Unit <= std_logic_vector(unsigned(a) + unsigned(src));
				
			else
				src := (others=>'X');
				Arith_Unit <= std_logic_vector(unsigned(a)-1);
			end if;
  end process;
end Behavioral;

