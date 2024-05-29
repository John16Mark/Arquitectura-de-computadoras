----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:06:09 05/08/2024 
-- Design Name: 
-- Module Name:    dec_instruccion - Behavioral 
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

entity dec_instruccion is
    Port ( instr : in  STD_LOGIC_VECTOR (15 downto 0);
           sel_write_d : out  STD_LOGIC_VECTOR (4 downto 0);
           sel_read_d : out  STD_LOGIC_VECTOR (4 downto 0);
           sel_read_r : out  STD_LOGIC_VECTOR (4 downto 0);
           en_write : out  STD_LOGIC;
           load_res : out  STD_LOGIC;
           load_mov : out  STD_LOGIC;
           sel_ALU : out  STD_LOGIC_VECTOR (2 downto 0);
           en_reg_estado : out  STD_LOGIC;
           sel_rel : out  STD_LOGIC;
           brne : out  STD_LOGIC;
           breq : out  STD_LOGIC;
           ret : out  STD_LOGIC;
           s1 : out  STD_LOGIC;
           s0 : out  STD_LOGIC;
			  en_port : out STD_LOGIC);
end dec_instruccion;

architecture Behavioral of dec_instruccion is

begin
	
	process(instr)
	begin
		case instr(15 downto 12) is
			when "0000" => -- ADD, LSL, NOP
				if(instr(11 downto 10) = "00") then -- NOP
					sel_write_d <= "00000";
					sel_read_d <= "00000";
					sel_read_r <= "00000";
					en_write <= '0';
					load_res <= '0';
					load_mov <= '0';
					sel_ALU <= "000";
					en_reg_estado <= '0';
					sel_rel <= '0';
					brne <= '0';
					breq <= '0';
					ret <= '0';
					s1 <= '0';
					s0 <= '0';
					en_port <= '0';

				elsif(instr(8 downto 4) = instr(9)&instr(3 downto 0)) then -- LSL
					sel_write_d <= instr(8 downto 4);
					sel_read_d <= instr(8 downto 4);
					sel_read_r <= "00000";
					en_write <= '1';
					load_res <= '1';
					load_mov <= '0';
					sel_ALU <= "110";
					en_reg_estado <= '1';
					sel_rel <= '0';
					brne <= '0';
					breq <= '0';
					ret <= '0';
					s1 <= '0';
					s0 <= '0';
					en_port <= '0';

				else -- ADD
					sel_write_d <= instr(8 downto 4);
					sel_read_d <= instr(8 downto 4);
					sel_read_r <= instr(9)&instr(3 downto 0);
					en_write <= '1';
					load_res <= '1';
					load_mov <= '0';
					sel_ALU <= "000";
					en_reg_estado <= '1';
					sel_rel <= '0';
					brne <= '0';
					breq <= '0';
					ret <= '0';
					s1 <= '0';
					s0 <= '0';
					en_port <= '0';
				end if;

			when "0001" => -- SUB
				sel_write_d <= instr(8 downto 4);
				sel_read_d <= instr(8 downto 4);
				sel_read_r <= instr(9)&instr(3 downto 0);
				en_write <= '1';
				load_res <= '1';
				load_mov <= '0';
				sel_ALU <= "001";
				en_reg_estado <= '1';
				sel_rel <= '0';
				brne <= '0';
				breq <= '0';
				ret <= '0';
				s1 <= '0';
				s0 <= '0';
				en_port <= '0';

			when "0010" => -- AND, OR EOR, MOV
				if(instr(11 downto 10) <= "00") then -- AND
					sel_write_d <= instr(8 downto 4);
					sel_read_d <= instr(8 downto 4);
					sel_read_r <= instr(9)&instr(3 downto 0);
					en_write <= '1';
					load_res <= '1';
					load_mov <= '0';
					sel_ALU <= "010";
					en_reg_estado <= '1';
					sel_rel <= '0';
					brne <= '0';
					breq <= '0';
					ret <= '0';
					s1 <= '0';
					s0 <= '0';
					en_port <= '0';

				elsif(instr(11 downto 10) = "01") then -- EOR
					sel_write_d <= instr(8 downto 4);
					sel_read_d <= instr(8 downto 4);
					sel_read_r <= instr(9)&instr(3 downto 0);
					en_write <= '1';
					load_res <= '1';
					load_mov <= '0';
					sel_ALU <= "100";
					en_reg_estado <= '1';
					sel_rel <= '0';
					brne <= '0';
					breq <= '0';
					ret <= '0';
					s1 <= '0';
					s0 <= '0';
					en_port <= '0';
				
				elsif(instr(11 downto 10) <= "10") then --OR
					sel_write_d <= instr(8 downto 4);
					sel_read_d <= instr(8 downto 4);
					sel_read_r <= instr(9)&instr(3 downto 0);
					en_write <= '1';
					load_res <= '1';
					load_mov <= '0';
					sel_ALU <= "011";
					en_reg_estado <= '1';
					sel_rel <= '0';
					brne <= '0';
					breq <= '0';
					ret <= '0';
					s1 <= '0';
					s0 <= '0';
					en_port <= '0';

				else -- MOV
					sel_write_d <= instr(8 downto 4);
					sel_read_d <= instr(9)&instr(3 downto 0);
					sel_read_r <= "00000";
					en_write <= '1';
					load_res <= '0';
					load_mov <= '1';
					sel_ALU <= "000";
					en_reg_estado <= '0';
					sel_rel <= '0';
					brne <= '0';
					breq <= '0';
					ret <= '0';
					s1 <= '0';
					s0 <= '0';
					en_port <= '0';
				end if;

			when "1001" => -- COM, LSR, RET
				if(instr(3 downto 0) <= "0000") then -- COM
					sel_write_d <= instr(8 downto 4);
					sel_read_d <= instr(8 downto 4);
					sel_read_r <= "00000";
					en_write <= '1';
					load_res <= '1';
					load_mov <= '0';
					sel_ALU <= "101";
					en_reg_estado <= '1';
					sel_rel <= '0';
					brne <= '0';
					breq <= '0';
					ret <= '0';
					s1 <= '0';
					s0 <= '0';
					en_port <= '0';

				elsif(instr(3 downto 0) = "0110") then -- LSR
					sel_write_d <= instr(8 downto 4);
					sel_read_d <= instr(8 downto 4);
					sel_read_r <= "00000";
					en_write <= '1';
					load_res <= '1';
					load_mov <= '0';
					sel_ALU <= "111";
					en_reg_estado <= '1';
					sel_rel <= '0';
					brne <= '0';
					breq <= '0';
					ret <= '0';
					s1 <= '0';
					s0 <= '0';
					en_port <= '0';

				else -- RET
					sel_write_d <= "00000";
					sel_read_d <= "00000";
					sel_read_r <= "00000";
					en_write <= '0';
					load_res <= '0';
					load_mov <= '0';
					sel_ALU <= "000";
					en_reg_estado <= '0';
					sel_rel <= '0';
					brne <= '0';
					breq <= '0';
					ret <= '1';
					s1 <= '1';
					s0 <= '0';
					en_port <= '0';
				end if;

			when "1110" => --LDI
				sel_write_d <= '1'&instr(7 downto 4);
				sel_read_d <= "00000";
				sel_read_r <= "00000";
				en_write <= '1';
				load_res <= '0';
				load_mov <= '0';
				sel_ALU <= "000";
				en_reg_estado <= '0';
				sel_rel <= '0';
				brne <= '0';
				breq <= '0';
				ret <= '0';
				s1 <= '0';
				s0 <= '0';
				en_port <= '0';

			when "1111" => -- BREQ, BRNE
				if(instr(10) <= '0') then -- BREQ
					sel_write_d <= "00000";
					sel_read_d <= "00000";
					sel_read_r <= "00000";
					en_write <= '0';
					load_res <= '0';
					load_mov <= '0';
					sel_ALU <= "000";
					en_reg_estado <= '0';
					sel_rel <= '0';
					brne <= '0';
					breq <= '1';
					ret <= '0';
					s1 <= '0';
					s0 <= '0';
					en_port <= '0';

				else -- BRNE
					sel_write_d <= "00000";
					sel_read_d <= "00000";
					sel_read_r <= "00000";
					en_write <= '0';
					load_res <= '0';
					load_mov <= '0';
					sel_ALU <= "000";
					en_reg_estado <= '0';
					sel_rel <= '0';
					brne <= '1';
					breq <= '0';
					ret <= '0';
					s1 <= '0';
					s0 <= '0';
					en_port <= '0';
				end if;

			when "1100" => -- RJMP
				sel_write_d <= "00000";
				sel_read_d <= "00000";
				sel_read_r <= "00000";
				en_write <= '0';
				load_res <= '0';
				load_mov <= '0';
				sel_ALU <= "000";
				en_reg_estado <= '0';
				sel_rel <= '1';
				brne <= '0';
				breq <= '0';
				ret <= '0';
				s1 <= '0';
				s0 <= '0';
				en_port <= '0';

			when "1101" => -- RCALL
				sel_write_d <= "00000";
				sel_read_d <= "00000";
				sel_read_r <= "00000";
				en_write <= '0';
				load_res <= '0';
				load_mov <= '0';
				sel_ALU <= "000";
				en_reg_estado <= '0';
				sel_rel <= '1';
				brne <= '0';
				breq <= '0';
				ret <= '0';
				s1 <= '0';
				s0 <= '1';
				en_port <= '0';

			when others => -- OUT
				sel_write_d <= "00000";
				sel_read_d <= "00000";
				sel_read_r <= instr(8 downto 4);
				en_write <= '0';
				load_res <= '0';
				load_mov <= '0';
				sel_ALU <= "000";
				en_reg_estado <= '0';
				sel_rel <= '0';
				brne <= '0';
				breq <= '0';
				ret <= '0';
				s1 <= '0';
				s0 <= '0';
				en_port <= '1';

		end case;
	end process;

end Behavioral;

