library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity add_sub is
    port(
        a        : in  std_logic_vector(31 downto 0);
        b        : in  std_logic_vector(31 downto 0);
        sub_mode : in  std_logic;
        carry    : out std_logic;
        zero     : out std_logic;
        r        : out std_logic_vector(31 downto 0)
    );
end add_sub;

architecture synth of add_sub is

signal temp : std_logic_vector(31 downto 0);

begin

	process(a, b, sub_mode)
	begin
		if(sub_mode = '1') then
			temp <= b xor (sub_mode & (30 => '0'));
			temp <= temp + a + 1;
			carry <= temp(31);
			r <= temp;
		end if;
		if(sub_mode = '0') then
			temp <= a + b;
			carry <= temp(31);
			r <= temp;
		end if;
		
		if(temp = x"0000") then
			zero <= '1';
		else
			zero <= '0';
		end if;
		r <= temp;
	end process;
	
end synth;
