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
	
		if(reset_n = '0' ) then
			state <= FETCH1;
		elsif(rising_edge(clk)) then
			state <= next_state;
		end if;
	end process;
	
	process(state, op, opx)
	begin
	---intitialisation of out variables at 0---
		next_state <= state;
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
		--op_alu <= (5 downto 0 => '0');
		
		case state is
		
			when FETCH1 => --enable to read the address--
				
				read <= '1';
				next_state <= FETCH2;
			
			when FETCH2 => --enable to store instruction in PC and increment IR--
				
				pc_en <= '1';
				ir_en <= '1';
				next_state <= DECODE;
				
			when DECODE => --identify instruction to select next_state--
			
				case "00" & op is
				
					when X"3A" => -- that'opcode for R-type--
					
						case "00" & opx is
							-- R_OP (add, sub, cmpge, cmplt, nor, and, or, xor, sll, srl, sra, cmpne, cmpeq, cmpgeu, cmpltu, rol, ror)--
							when X"31" | X"39" | X"08" | X"10" | X"06" | X"0E" | X"16" | X"1E" | X"13" | X"1B" | X"3B" | X"18" | X"20" | X"28" | X"30" | X"03" | X"0B" =>
								next_state <= R_OP;
								
							-- EXECUTE (slli, srli, srai, roli)--
							when X"12" | X"1A" | X"3A" | X"02" =>
								next_state <= REXECUTE;
							
							--JMP (ret, jmp)--
							when X"05" | X"0D" =>
								next_state <= JMP;
								
							--CALLR (callr)--
							when X"1D" =>
								next_state <= CALLR;
								
							--BREAK (break)--
							when X"34" =>
								next_state <= BREAK;
							
							when others =>
								next_state <= BREAK;
						
						end case;
						
					--I_OP (addi, cmpgei, cmplti, cmpnei, cmpeqi)
					when X"04" | X"08" | X"10" | X"18" | X"20" =>
						next_state <= I_OP;
					
					--I_OP to EXECUTE (andi, ori, xori, cmpgeui, cmpltui)
					when X"0C" | X"14" | X"1C" | X"28" | X"30" =>
						next_state <= IEXECUTE;
					
					--CALL(call)--
					when X"00" =>
						next_state <= CALL;
					
					--LOAD(ldw)--
					when X"17" =>
						next_state <= LOAD1;
					
					--STORE(stw)--
					when X"15" =>
						next_state <= STORE;
					
					--BRANCH(br, bge, blt, bne, beq, bgeu, bltu)--
					when X"06" | X"0E" | X"16" | X"1E" | X"26" | X"2E" | X"36" =>
						next_state <= BRANCH;
						
					--JMPI(jmpi)--
					when X"01" =>
						next_state <= JMPI;
						
					when others => 
						next_state <= BREAK;
				end case;
				
			when R_OP =>
				
				sel_b <= '1';
				sel_rC <= '1';
				rf_wren <= '1';
				read <= '1'; --next instruction--
				next_state <= FETCH2;
			
			when REXECUTE =>
				
				sel_rC <= '1';
				rf_wren <= '1';
				read <= '1';
				next_state <= FETCH2;
			
			when JMP =>
				pc_en <= '1';
				pc_sel_a <= '1';
				next_state <= FETCH1;
				
			when CALLR => 
				pc_en <= '1';
				pc_sel_a <= '1';
				sel_pc <= '1';
				sel_rC <= '1';
				rf_wren <= '1';
				next_state <= FETCH1;
				
			when BREAK =>
				next_state <= BREAK;
				
			when I_OP =>
				imm_signed <= '1';
				rf_wren <= '1';
				read <= '1';
				next_state <= FETCH2;
				
			when IEXECUTE =>
				rf_wren <= '1';
				read <= '1';
				next_state <= FETCH2;
				
			when CALL =>
				pc_en <= '1';
				pc_sel_imm <= '1';
				sel_pc <= '1';
				sel_ra <= '1';
				rf_wren <= '1';
				next_state <= FETCH1;
				
			when LOAD1 =>
				imm_signed <= '1';
				sel_addr <= '1';
				read <= '1';
				next_state <= LOAD2;
			
			when LOAD2 =>
				sel_mem <= '1';
				rf_wren <= '1';
				read <= '1';
				next_state <= FETCH2;
			
			when STORE =>
				imm_signed <= '1';
				sel_addr <= '1';
				write <= '1';
				next_state <= FETCH1;
				
			when BRANCH =>
				sel_b <= '1';
				branch_op <= '1';
				pc_add_imm <= '1';
				next_state <= FETCH1;
			
			when JMPI =>
				pc_en <= '1';
				pc_sel_imm <= '1';
				next_state <= FETCH1;
		end case;
	end process;
	
	process(op, opx) --ALU
	begin
	op_alu <= (5 downto 0 => '0'); --initialisation
		
		if (op(2 downto 0) = "010") then --correspond to 111010, so 010 wich is R type
			 
			 op_alu(2 downto 0) <= opx(5 downto 3);
			 
			 case opx(2 downto 0) is
				
				when "000" =>
					--comparator--
					op_alu(5 downto 3) <= "011";
				when "001" =>
					--sub--
					op_alu(5 downto 3) <= "00" & opx(3);
					
				when "110" =>
					--logic unit--
					op_alu(5 downto 3) <= "100";
				
				when "010" | "011" =>
					--shift--
					op_alu(5 downto 3) <= "110";
				
				when others =>
					op_alu(5 downto 3) <= "000";
				end case;
			
			else --not R-Type so I-Type
			
			op_alu(2 downto 0) <= op(5 downto 3);
			
			case op(2 downto 0) is
			
				when "100" => --logic or add
					
					if (op(5 downto 3)) = "000" then --add
						op_alu(5 downto 3) <= op(5 downto 3);
					else --logic unit
						op_alu(5 downto 3) <= "100";
					end if;
				when "000" | "110" => --comparator / branch
					op_alu(5 downto 3) <= "011"; 
				
				when others =>
					op_alu(5 downto 3) <= "000"; --default case set at "000"
			
			end case;
		end if;
	end process;

					
			
				
		
end synth;
