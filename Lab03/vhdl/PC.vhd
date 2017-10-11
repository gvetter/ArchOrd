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
if (rising_edge(clk)) then
		if (enable = '1') then 
			addr <= ((31 downto 16 => '0') & (unsigned(a) + 4);
		end if;
		if (reset_n = '1') then
			addr <= ((31 downto 0) => '0');
		end if;
	end if;
end synth;
