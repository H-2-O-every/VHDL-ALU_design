----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:12:38 01/14/2020 
-- Design Name: 
-- Module Name:    test_mux_mod - Behavioral 
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

entity test_mux_mod is
	port( LogicUnit, ArithUnit : in std_logic_vector(7 downto 0);
			ALU_Noshift : out std_logic_vector(7 downto 0);
			sel : in std_logic);
end test_mux_mod;

architecture Behavioral of test_mux_mod is
begin
	process(LogicUnit, ArithUnit, sel)
		begin
			if(sel = '0') then
				ALU_Noshift <= LogicUnit;
			else
				ALU_Noshift <= ArithUnit;
			end if;
	end process;
end Behavioral;

