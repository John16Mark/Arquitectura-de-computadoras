----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:32:19 04/07/2024 
-- Design Name: 
-- Module Name:    top_pila - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top_pila is
    Port ( clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           s1s0 : in  STD_LOGIC_VECTOR (1 downto 0);
           botones : in  STD_LOGIC_VECTOR (5 downto 0);
           leds : out  STD_LOGIC_VECTOR (5 downto 0));
end top_pila;

architecture Behavioral of top_pila is

component program_counter is
    Port ( clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           I : in  STD_LOGIC_VECTOR (15 downto 0);
           O : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component stack_pointer is
    Port ( clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           I : in  STD_LOGIC_VECTOR (2 downto 0);
           O : out  STD_LOGIC_VECTOR (2 downto 0));
end component;

component RAM is
    Port ( clk : in  STD_LOGIC;
           WE : in  STD_LOGIC;
           A : in  STD_LOGIC_VECTOR (2 downto 0);
           WD : in  STD_LOGIC_VECTOR (15 downto 0);
           RD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component clk_divisor is
    Port ( clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           q_27 : out  STD_LOGIC);
end component;

-- Señales auxiliares
signal pc_aux_i, pc_aux_o, pc_aux_norm, rd_aux, botones_aux: STD_LOGIC_VECTOR (15 downto 0);
signal sp_aux_i, sp_aux_o, call_aux, ret_aux, sp_aux_ret_o: STD_LOGIC_VECTOR(2 downto 0);  
signal clock_div: STD_LOGIC;

begin
	
	botones_aux <= "0000000000"&botones;

	-- Multiplexor Program Counter
	pc_aux_i <=	pc_aux_norm when s1s0 = "00" else	-- Instrucción normal
					botones_aux when s1s0 = "01" else	-- RCALL
					rd_aux;										-- RET
	
	pc_aux_norm <= pc_aux_o + 1;

	PC: program_counter
	Port map (	clk => clock_div,
					clr => clr,
					I => pc_aux_i,
					O => pc_aux_o );

	memoria: RAM
	Port map (	clk => clock_div,
					WE => s1s0(0),
					A => sp_aux_ret_o,
					WD => pc_aux_norm,
					RD => rd_aux );
	
	call_aux <= sp_aux_o - 2;
	ret_aux <= sp_aux_o + 2;
	
	-- Multiplexor Stack Pointer
	sp_aux_i <= sp_aux_o when s1s0 = "00" else
					call_aux when s1s0 = "01" else
					ret_aux;
	
	-- Multiplexor Stack Pointer return aux
	sp_aux_ret_o <= sp_aux_o when s1s0(1) = '0' else
						 ret_aux;
	
	SP: stack_pointer
	Port map (	clk => clock_div,
					clr => clr,
					I => sp_aux_i,
					O => sp_aux_o );
	
	CD: clk_divisor
	Port map (	clk => clk,
					clr => clr,
					q_27 => clock_div );
	
	leds <= pc_aux_o (5 downto 0);

end Behavioral;

