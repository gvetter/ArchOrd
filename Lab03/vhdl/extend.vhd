library ieee;
use ieee.std_logic_1164.all;

entity extend is
    port(
        imm16  : in  std_logic_vector(15 downto 0);
        signed : in  std_logic;
        imm32  : out std_logic_vector(31 downto 0)
    );
end extend;

architecture synth of extend is
signal temp : std_logic_vector(15 downto 0);
begin
	process(imm16, signed)
	begin
	temp <= signed & (14 downto 0 => '0');
	imm32 <= temp & imm16;
	end process;
end synth;
