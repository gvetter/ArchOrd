library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity PC is
    port(
        clk     : in  std_logic;
        reset_n : in  std_logic;
        en      : in  std_logic;
        sel_a   : in  std_logic;
        sel_imm : in  std_logic;
        add_imm : in  std_logic;
        imm     : in  std_logic_vector(15 downto 0);
        a       : in  std_logic_vector(15 downto 0);
        addr    : out std_logic_vector(31 downto 0)
    );
end PC;

architecture synth of PC is
begin
process(clk, reset_n, en, a)
begin

	if (reset_n = '0') then
			addr <= (31 downto 0 => '0');
			
	elsif (rising_edge(clk)) then
		if (en = '1') then 
			if((sel_imm or sel_a) = '1') then
				if (sel_a = '1') then
					addr <= (31 downto 16 => '0') & a(15 downto 2) & "00";
				else 
					addr <= (31 downto 16 => '0') & imm(13 downto 0) & "00";
				end if;
			else	
				addr <= (31 downto 16 => '0') & std_logic_vector(unsigned(a) + 4);
			end if;
		end if;
	end if;
end process;
end synth;
