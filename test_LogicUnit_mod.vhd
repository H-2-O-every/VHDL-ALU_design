----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:02:50 01/14/2020 
-- Design Name: 
-- Module Name:    test_LogicUnit_mod - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity test_LogicUnit_mod is
	port( a, b : in std_logic_vector( 7 downto 0);
			Logic_Unit : out std_logic_vector(7 downto 0);
			sel : in std_logic_vector(1 downto 0));
end test_LogicUnit_mod;

architecture Behavioral of test_LogicUnit_mod is
	
begin
	process(a,b,sel)
		begin
			if(sel = "00") then
				Logic_Unit <= a and b;
				
			elsif(sel = "01") then
				Logic_Unit <= a or b;
				
			elsif(sel = "10") then
				Logic_Unit <= a xor b;
				
			else
				Logic_Unit <= a nand a;
			end if;
	end process;
end Behavioral;

