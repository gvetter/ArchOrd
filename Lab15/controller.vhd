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
    type state_type is (FETCH1, FETCH2, DECODE, R_OP, RI_OP, I_OP, UI_OP, LOAD1, LOAD2, STORE, BRANCH, CALL, CALLR, JMP, JMPI, BREAK);
    signal state, nextstate : state_type;
begin
    process(clk, reset_n)
    begin
        if (reset_n = '0') then
            state <= FETCH1;
        elsif (rising_edge(clk)) then
            state <= nextstate;
        end if;
    end process;

    process(state, op, opx)
    begin
        nextstate  <= state;
        branch_op  <= '0';
        imm_signed <= '0';
        ir_en      <= '0';
        pc_add_imm <= '0';
        pc_en      <= '0';
        pc_sel_a   <= '0';
        pc_sel_imm <= '0';
        rf_wren    <= '0';
        sel_addr   <= '0';
        sel_b      <= '0';
        sel_mem    <= '0';
        sel_pc     <= '0';
        sel_rC     <= '0';
        sel_ra     <= '0';
        write      <= '0';
        read       <= '0';

        case state is
            when FETCH1 =>
                -- During FETCH1 we set the address to enable to read
                -- the next instruction during the next cycle
                read      <= '1';
                nextstate <= FETCH2;

            when FETCH2 =>
                -- During FETCH2 we store the instruction and
                -- increment the PC
                pc_en     <= '1';
                ir_en     <= '1';
                nextstate <= DECODE;

            when DECODE =>
                -- During DECODE we identify the instruction and select
                -- the next state
                case "00" & op is
                    -- R-type (op = 0x3A)
                    when X"3A" =>
                        case "00" & opx is
                            -- R_OP (add, sub, cmpge, cmplt, nor, and, or, xor, sll, srl, sra, cmpne, cmpeq, cmpgeu, cmpltu, rol, ror)
                            when X"31" | X"39" | X"08" | X"10" | X"06" | X"0E" | X"16" | X"1E" | X"13" | X"1B" | X"3B" | X"18" | X"20" | X"28" | X"30" | X"03" | X"0B" =>
                                nextstate <= R_OP;

                            -- RI_OP (roli, srli, slli, srai)
                            when X"02" | X"1A" | X"12" | X"3A" =>
                                nextstate <= RI_OP;

                            -- JMP (ret, jmp)
                            when X"05" | X"0D" =>
                                nextstate <= JMP;

                            -- BREAK (break)
                            when X"34" =>
                                nextstate <= BREAK;

                            -- CALLR (callr)
                            when X"1D" =>
                                nextstate <= CALLR;

                            when others =>
                                nextstate <= BREAK;
                        end case;

                    -- CALL (call)
                    when X"00" =>
                        nextstate <= CALL;

                    -- BRANCH (br, blt, bgt, beq, bne, bltu, bgtu)
                    when X"06" | X"0E" | X"16" | X"1E" | X"26" | X"2E" | X"36" =>
                        nextstate <= BRANCH;

                    -- LOAD (ldw)
                    when X"17" =>
                        nextstate <= LOAD1;

                    -- STORE (stw)
                    when X"15" =>
                        nextstate <= STORE;

                    -- I_OP (addi, cmpgei, cmplti, cmpnei, cmpeqi)
                    when X"04" | X"08" | X"10" | X"18" | X"20" =>
                        nextstate <= I_OP;

                    -- UI_OP (andi, xori, ori, cmpgeui, cmpltui)
                    when X"0C" | X"1C" | X"14" | X"28" | X"30" =>
                        nextstate <= UI_OP;

                    -- JMPI (jmpi)
                    when X"01" =>
                        nextstate <= JMPI;

                    when others =>
                        nextstate <= BREAK;
                end case;

            when R_OP =>
                sel_b     <= '1';
                rf_wren   <= '1';
                sel_rC    <= '1';
                read      <= '1';       -- read next instruction
                nextstate <= FETCH2;

            when RI_OP =>
                rf_wren   <= '1';
                sel_rC    <= '1';
                read      <= '1';       -- read next instruction
                nextstate <= FETCH2;

            when I_OP =>
                imm_signed <= '1';
                rf_wren    <= '1';
                read       <= '1';      -- read next instruction
                nextstate  <= FETCH2;

            when UI_OP =>
                rf_wren   <= '1';
                read      <= '1';       -- read next instruction
                nextstate <= FETCH2;

            when LOAD1 =>
                imm_signed <= '1';
                sel_addr   <= '1';
                read       <= '1';
                nextstate  <= LOAD2;

            when LOAD2 =>
                sel_mem   <= '1';
                rf_wren   <= '1';
                read      <= '1';       -- read next instruction
                nextstate <= FETCH2;

            when STORE =>
                imm_signed <= '1';
                sel_addr   <= '1';
                write      <= '1';
                nextstate  <= FETCH1;

            when BRANCH =>
                -- In case of a br, we use the fact that rA = zero and rB = zero.
                -- Thus, we can compare 0 to 0 and always get 1 from the ALU.
                sel_b      <= '1';
                branch_op  <= '1';
                pc_add_imm <= '1';
                nextstate  <= FETCH1;

            when CALL =>
                pc_en      <= '1';
                pc_sel_imm <= '1';
                rf_wren    <= '1';
                sel_pc     <= '1';
                sel_ra     <= '1';
                nextstate  <= FETCH1;

            when CALLR =>
                pc_en     <= '1';
                pc_sel_a  <= '1';
                rf_wren   <= '1';
                sel_pc    <= '1';
                sel_rC    <= '1';
                nextstate <= FETCH1;

            when JMP =>
                pc_en     <= '1';
                pc_sel_a  <= '1';
                nextstate <= FETCH1;

            when JMPI =>
                pc_en      <= '1';
                pc_sel_imm <= '1';
                nextstate  <= FETCH1;

            when BREAK =>
                nextstate <= BREAK;
        end case;
    end process;

    -- op_alu
    process(op, opx)
    begin
        if op(2 downto 0) = "010" then
            -- R-type, op = 0x3A

            -- the 3 lsb of op_alu are defined by opx if R-type
            op_alu(2 downto 0) <= opx(5 downto 3);

            case opx(2 downto 0) is
                -- comparator unit when opx[2..0] = "000"
                when "000" =>
                    op_alu(5 downto 3) <= "011";

                -- add/sub unit when opx[2..0] = "001"
                -- sub_mode = opx(3)
                when "001" =>
                    op_alu(5 downto 3) <= "00" & opx(3);

                -- shift unit when opx[2..1] = "01"
                when "010" | "011" =>
                    op_alu(5 downto 3) <= "110";

                -- logic unit when opx[2..0] = "110"
                when "110" =>
                    op_alu(5 downto 3) <= "100";

                -- default operation is sum
                when others =>
                    op_alu(5 downto 3) <= "000";
            end case;
        else
            -- I-type

            -- the 3 lsb of op_alu are defined by op if I-type
            op_alu(2 downto 0) <= op(5 downto 3);

            case op(2 downto 0) is
                -- comparator unit when op[2..0] = "000" or "110" (branch)
                when "000" | "110" =>
                    op_alu(5 downto 3) <= "011";
                    -- unconditional branch needs "=", ">= (signed)" or ">= (unsigned)"
                    if op = "000110" then
                        -- "="
                        op_alu(2 downto 0) <= "100";
                    end if;

                -- logic or add unit when opx[2..0] = "100"
                when "100" =>
                    -- add : 0x04
                    if (op(5 downto 3) = "000") then
                        op_alu(5 downto 3) <= "000";
                    else                -- logic unit
                        op_alu(5 downto 3) <= "100";
                    end if;

                -- default operation is sum
                when others =>
                    op_alu(5 downto 3) <= "000";
            end case;
        end if;
    end process;
end synth;
