----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:16:16 01/14/2020 
-- Design Name: 
-- Module Name:    test_shifter_mod - Behavioral 
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

entity test_shifter_mod is
	port( ALUNoshift : in std_logic_vector(7 downto 0);
			sel : in std_logic_vector(1 downto 0);
			y : out std_logic_vector(7 downto 0));
end test_shifter_mod;

architecture Behavioral of test_shifter_mod is
begin
	process(ALUNoshift, sel)
		begin
			if(sel = "00") then
				y <= ALUNoshift;
			elsif(sel = "01") then
				y <= std_logic_vector(unsigned(ALUNoshift) sll 1);
			elsif(sel = "10") then
				y <= std_logic_vector(unsigned(ALUNoshift) srl 1);
			else
				y <= (others=>'X');
			end if;
	end process;

end Behavioral;

