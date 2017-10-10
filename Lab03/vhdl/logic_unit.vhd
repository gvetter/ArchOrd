library ieee;
use ieee.std_logic_1164.all;

entity logic_unit is
    port(
        a  : in  std_logic_vector(31 downto 0);
        b  : in  std_logic_vector(31 downto 0);
        op : in  std_logic_vector(1 downto 0);
        r  : out std_logic_vector(31 downto 0)
    );
end logic_unit;

architecture synth of logic_unit is
begin

choice: process(a,b,op)
begin
	if(op = "00") then
	r <= a nor b;
	end if;
	if (op = "01") then
	r <= a and b;
	end if;
	if(op  = "10") then
	r <= a or b;
	end if;
	if(op = "11") then
	r <= a xor b;
	end if;
end process;


end synth;
