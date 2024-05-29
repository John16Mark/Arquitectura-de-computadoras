----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:14:01 05/08/2024 
-- Design Name: 
-- Module Name:    top_procesador - Behavioral 
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

entity top_procesador is
    Generic ( N : integer := 8 );
    Port ( clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           O : out  STD_LOGIC_VECTOR (7 downto 0));
end top_procesador;

architecture Behavioral of top_procesador is

component archivo_registro is
	 generic ( N : integer := 8);
    Port ( clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           sel_read_d : in  STD_LOGIC_VECTOR (4 downto 0);
           sel_read_r : in  STD_LOGIC_VECTOR (4 downto 0);
           sel_write_d : in  STD_LOGIC_VECTOR (4 downto 0);
           en_w : in  STD_LOGIC;
           dato : in  STD_LOGIC_VECTOR (N-1 downto 0);
           R : out  STD_LOGIC_VECTOR (N-1 downto 0);
           D : out  STD_LOGIC_VECTOR (N-1 downto 0));
end component;

component ALU is
	 generic ( N : integer := 8 );
    Port ( A : in  STD_LOGIC_VECTOR (N-1 downto 0);
           B : in  STD_LOGIC_VECTOR (N-1 downto 0);
           sel : in  STD_LOGIC_VECTOR (2 downto 0);
           F : out  STD_LOGIC_VECTOR (N-1 downto 0);
           Z : out  STD_LOGIC);
end component;

component port_b is
	 generic ( N : integer := 8 );
    Port ( clk : in  STD_LOGIC;
			  clr : in  STD_LOGIC;
			  en : in  STD_LOGIC;
           I : in  STD_LOGIC_VECTOR (N-1 downto 0);
           O : out  STD_LOGIC_VECTOR (N-1 downto 0));
end component;

component ext_sig_branch is
    Port ( Ibr : in  STD_LOGIC_VECTOR (15 downto 0);
           Obr : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component ext_sig_relative is
    Port ( Irel : in  STD_LOGIC_VECTOR (15 downto 0);
           Orel : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component program_counter is
    Port ( clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           I : in  STD_LOGIC_VECTOR (15 downto 0);
           O : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component ROM is
    Port ( A : in  STD_LOGIC_VECTOR (15 downto 0);
           O : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component dec_instruccion is
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
end component;

component reg_estado is
    Port ( clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           en : in  STD_LOGIC;
           ent : in  STD_LOGIC;
           sal : out  STD_LOGIC);
end component;

component RAM is
    Port ( clk : in  STD_LOGIC;
           WE : in  STD_LOGIC;
           A : in  STD_LOGIC_VECTOR (2 downto 0);
           WD : in  STD_LOGIC_VECTOR (15 downto 0);
           RD : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component stack_pointer is
    Port ( clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           I : in  STD_LOGIC_VECTOR (2 downto 0);
           O : out  STD_LOGIC_VECTOR (2 downto 0));
end component;

-- Señales auxiliares
-- sumadores y multiplexores
signal branch_aux : STD_LOGIC;
signal offset_aux, sig_instr_aux : STD_LOGIC_VECTOR (15 downto 0);
signal call_aux, ret_aux : STD_LOGIC_VECTOR (2 downto 0);
-- archivo registros
signal dato_I_aux, rd_aux, rs_aux : STD_LOGIC_VECTOR (N-1 downto 0);
signal sel_w_d_aux, sel_r_d_aux, sel_r_r_aux : STD_LOGIC_VECTOR (4 downto 0);
signal en_w_aux : STD_LOGIC;
-- ALU
signal sel_alu_aux : STD_LOGIC_VECTOR (2 downto 0);
signal F_aux : STD_LOGIC_VECTOR (N-1 downto 0);
signal Z_aux : STD_LOGIC;
-- port_b
signal en_port_aux : STD_LOGIC;
-- ext_sig_branch
signal off_branch_aux : STD_LOGIC_VECTOR (15 downto 0);
-- ext_sig_relative
signal off_relative_aux : STD_LOGIC_VECTOR (15 downto 0);
-- program counter
signal pc_i_aux, pc_o_aux : STD_LOGIC_VECTOR (15 downto 0);
-- ROM
signal rom_o_aux : STD_LOGIC_VECTOR (15 downto 0);
-- decodificador instrucción
signal ld_res_aux, ld_mov_aux : STD_LOGIC;
signal s1_aux, s0_aux : STD_LOGIC;
signal breq_aux, brne_aux : STD_LOGIC;
signal ret_mux_aux : STD_LOGIC;
signal sel_relative_aux : STD_LOGIC;
-- registo estado
signal en_sreg_aux, sreg_o_aux : STD_LOGIC;
-- RAM
signal ram_read_aux, ram_write_aux : STD_LOGIC_VECTOR (15 downto 0);
signal ram_A_aux : STD_LOGIC_VECTOR (2 downto 0);
-- stack pointer
signal sp_i_aux, sp_o_aux : STD_LOGIC_VECTOR (2 downto 0);

begin

	sig_instr_aux <= offset_aux + 1 + pc_o_aux;

	ram_write_aux <= pc_o_aux + 1;

	call_aux <= sp_o_aux - 2;

	ret_aux <= sp_o_aux + 2;
	
	branch_aux <= (breq_aux and sreg_o_aux) or (brne_aux and not sreg_o_aux);

	dato_I_aux <=	rom_o_aux(11 downto 8)&rom_o_aux(3 downto 0) when ld_res_aux = '0' and ld_mov_aux = '0' else
						rs_aux when ld_res_aux = '0' and ld_mov_aux = '1' else
						F_aux;

	offset_aux <=	x"0000" when sel_relative_aux = '0' and branch_aux = '0' else
						off_branch_aux when sel_relative_aux = '0' and branch_aux = '1' else
						off_relative_aux;

	pc_i_aux <=	sig_instr_aux when ret_mux_aux = '0' else
					ram_read_aux;

	sp_i_aux <= sp_o_aux when s1_aux = '0' and s0_aux = '0' else
					call_aux when s1_aux = '0' and s0_aux = '1' else
					ret_aux;

	ram_A_aux <=	sp_o_aux when s1_aux = '0' else
						ret_aux;

	arch_reg: archivo_registro
	Port Map (	clk => clk,
					clr => clr,
					sel_read_d => sel_r_d_aux,
					sel_read_r => sel_r_r_aux,
					sel_write_d => sel_w_d_aux,
					en_w => en_w_aux,
					dato => dato_I_aux,
					R => rs_aux,
					D => rd_aux);

	UAL: ALU
	Port Map (	A => rd_aux,
					B => rs_aux,
					sel => sel_ALU_aux,
					F => F_aux,
					Z => Z_aux);

	puerto: port_b
	Port Map (	clk => clk,
					clr => clr,
					en => en_port_aux,
					I => rs_aux,
					O => O);

	offset_br: ext_sig_branch
	Port Map (	Ibr => rom_o_aux,
					Obr => off_branch_aux);

	offset_rel: ext_sig_relative
	Port Map (	Irel => rom_o_aux,
					Orel => off_relative_aux);

	PC: program_counter
	Port Map (	clk => clk,
					clr => clr,
					I => pc_i_aux,
					O => pc_o_aux);

	mem_rom: ROM
	Port Map (	A => pc_o_aux,
					O => rom_o_aux);

	dec_inst: dec_instruccion
	Port Map (	instr => rom_o_aux,
					sel_write_d => sel_w_d_aux,
					sel_read_d => sel_r_d_aux,
					sel_read_r => sel_r_r_aux,
					en_write => en_w_aux,
					load_res => ld_res_aux,
					load_mov => ld_mov_aux,
					sel_ALU => sel_alu_aux,
					en_reg_estado => en_sreg_aux,
					sel_rel => sel_relative_aux,
					brne => brne_aux,
					breq => breq_aux,
					ret => ret_mux_aux,
					s1 => s1_aux,
					s0 => s0_aux,
					en_port => en_port_aux);

	sreg: reg_estado
	Port Map (	clk => clk,
					clr => clr,
					en => en_sreg_aux,
					ent => Z_aux,
					sal => sreg_o_aux);

	memoria: RAM
	Port Map (	clk => clk,
					WE => s0_aux,
					A => ram_A_aux,
					WD => ram_write_aux,
					RD => ram_read_aux);

	SP: stack_pointer
	Port Map (	clk => clk,
					clr => clr,
					I => sp_i_aux,
					O => sp_o_aux);

end Behavioral;

