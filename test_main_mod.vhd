----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:32:27 01/14/2020 
-- Design Name: 
-- Module Name:    test_main_mod - Behavioral 
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

entity test_main_mod is
	port(sel : in std_logic_vector(4 downto 0);
        a,b : in std_logic_vector(7 downto 0);
        Cin : in std_logic;
        y   : out std_logic_vector(7 downto 0));
end test_main_mod;

architecture Behavioral of test_main_mod is
	component test_logicunit_mod
	   port( a, b : in std_logic_vector( 7 downto 0);
				Logic_Unit : out std_logic_vector(7 downto 0);
				sel : in std_logic_vector(1 downto 0));
	end component;
	
	component test_arithmeticunit_mod
	   port(a, b : in std_logic_vector(7 downto 0);
			  Cin : in std_logic;
			  Arith_Unit : out std_logic_vector(7 downto 0);
			  sel : in std_logic_vector( 1 downto 0 ));
	end component;
	
	component test_mux_mod
	   port( LogicUnit, ArithUnit : in std_logic_vector(7 downto 0);
			   ALU_Noshift : out std_logic_vector(7 downto 0);
			   sel : in std_logic);
	end component;
	
	component test_shifter_mod
	   port( ALUNoshift : in std_logic_vector(7 downto 0);
			   sel : in std_logic_vector(1 downto 0);
			   y : out std_logic_vector(7 downto 0));
	end component;
	
	signal Logic_Unit_Result, Arith_Unit_Result, ALU_NoShift_Result : std_logic_vector(7 downto 0);
	
begin
	Logic_Unit_ALU : test_logicunit_mod port map( a=>a, b=>b, Logic_Unit=>Logic_Unit_Result, sel=>sel(1 downto 0));
															
	Arithmetic_Unit_ALU : test_arithmeticunit_mod port map(a=>a, b=>b, Cin=>Cin, Arith_Unit=>Arith_Unit_Result, sel=>sel(1 downto 0));
																			 
	Mux_ALU : test_mux_mod port map(LogicUnit=> Logic_Unit_Result, ArithUnit=>Arith_Unit_Result ,ALU_NoShift=>ALU_NoShift_Result, sel=>sel(2));
										  
   Shifter_ALU : test_shifter_mod port map(ALUNoShift=>ALU_NoShift_Result,sel=>sel(4 downto 3),y=>y);	
end Behavioral;

