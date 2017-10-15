library ieee;
use ieee.std_logic_1164.all;

entity controller is
    port(
        clk        : in  std_logic;
        reset_n    : in  std_logic;
        -- instruction opcode
        op         : in  std_logic_vector(5 downto 0);
        opx        : in  std_logic_vector(5 downto 0);
        -- activates branch condition
        branch_op  : out std_logic;
        -- immediate value sign extention
        imm_signed : out std_logic;
        -- instruction register enable
        ir_en      : out std_logic;
        -- PC control signals
        pc_add_imm : out std_logic;
        pc_en      : out std_logic;
        pc_sel_a   : out std_logic;
        pc_sel_imm : out std_logic;
        -- register file enable
        rf_wren    : out std_logic;
        -- multiplexers selections
        sel_addr   : out std_logic;
        sel_b      : out std_logic;
        sel_mem    : out std_logic;
        sel_pc     : out std_logic;
        sel_ra     : out std_logic;
        sel_rC     : out std_logic;
        -- write memory output
        read       : out std_logic;
        write      : out std_logic;
        -- alu op
        op_alu     : out std_logic_vector(5 downto 0)
    );
end controller;

architecture synth of controller is

	type state_type is (FETCH1, FETCH2, DECODE, R_OP, 	REXECUTE, I_OP, IEXECUTE, LOAD1, LOAD2, STORE, BRANCH, CALL, CALLR, JMP, JMPI, BREAK);
	signal state, next_state : state_type;
	
begin

	process(clk, next_state, reset_n) 
	begin
	
		if(reset_n = '1' ) then
			state <= FETCH1;
		elsif(rising_edge(clk)) then
			state <= next_state;
		end if;
	end process;
	
	process(state, op, opx)
	begin
	---intitialisation of out variables at 0---
		nextstate <= state;
		branch_op <= '0' ;
		imm_signed <= '0' ;
		ir_en <= '0' ;
		pc_add_imm <= '0' ;
		pc_en <= '0' ;
		pc_sel_a <= '0' ;
		pc_sel_imm <= '0' ;
		rf_wren <= '0';
		sel_addr <= '0';
		sel_b <= '0';
		sel_mem <= '0';
		sel_pc <= '0';
		sel_ra <= '0';
		sel_rC <= '0';
		read <= '0';
		write <= '0';
		op_alu <= ((5 downto 0) => '0');
		
		case state is
		
			when FETCH1 => --enable to read the address--
				next_state <= FETCH2;
				read <= '1';
			
			when FETCH2 => --enable to store instruction in PC and increment IR--
				next_state <= DECODE;
				pc_en <= '1';
				ir_en <= '1';
				
			when DECODE => --identify instruction to select next_state--
			
				case op & "00" is
				
					when "0x3A" -- that'opcode for R-type--
					
						case opx & "00" is
							-- R_OP (add, sub, cmpge, cmplt, nor, and, or, xor, sll, srl, sra)--
							when "0x31" | "0x39" | "0x08" | "0x10" | "0x06" | "0x0E" | "0x16" | "0x1E" | "0x13" | "0x1B" | "0x3B" =>
								next_state <= R_OP;
								
							-- EXECUTE (slli, srli, srai)--
							when "0x12" | "0x1A" | "0x3A" =>
								next_state <= REXECUTE;
							
							--JMP (ret, jmp)--
							when "0x05" | "0x0D" =>
								next_state <= JMP;
								
							--CALLR (callr)--
							when "0x1D" =>
								next_state <= CALLR;
								
							--BREAK (break)--
							when "0x34" =>
								next_state <= BREAK;
							
							when others =>
								next_state <= BREAK;
						
						end case;
						
					--I_OP (addi, cmpgei, cmplti, cmpnei, cmpeqi)
					when "0x04" | "0x08" | "0x10" | "0x18" | "0x20" =>
						next_state <= I_OP
					
					--I_OP to EXECUTE (andi, ori, xori, cmpgeui, cmpltui)
					when "0x0C" | "0x14" | "Ox1C" | "0x28" | "0x30" =>
						next_state <= IEXECUTE;
					
					--CALL(call)--
					when "0x00" =>
						next_state <= CALL;
					
					--LOAD(ldw)--
					when "0x17" =>
						next_state <= LOAD1;
					
					--STORE(stw)--
					when "0x15" =>
						next_state <= STORE;
					
					--BRANCH(br, bge, blt, bne, beq, bgeu, bltu)--
					when "0x06" | "0x0E" | "0x16" | "0x1E" | "0x26" | "0x2E" | "0x36" =>
						next_state <= BRANCH;
						
					--JMPI(jmpi)--
					when "0x01" =>
						next_state <= JMPI;
						
					when others => 
						next_state <= BREAK;
				end case;
				
			when R_OP =>
				next_state <= FETCH2;
				sel_b <= '1';
				sel_rC <= '1';
				rf_wren <= '1';
				read <= '1'; --next instruction--
			
			when REXECUTE =>
				next_state <= FETCH2;
				sel_rC <= '1';
				rf_wren <= '1';
				read <= '1';
			
			when 
		
		
end synth;
