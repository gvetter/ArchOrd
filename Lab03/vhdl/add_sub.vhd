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
signal b_temp, temp_sub_mode : std_logic_vector(31 downto 0);
signal temp : std_logic_vector(32 downto 0);

begin
		b_temp <= b xor (31 downto 0 => sub_mode);
		temp_sub_mode <= (31 downto 1 => '0') & sub_mode;

		--We add a buffer to detect the carry.
		temp <= std_logic_vector(unsigned('0' & b_temp) + unsigned('0' & a) + unsigned('0' & temp_sub_mode));
		--We output the buffer as the carry.
		carry <= temp(32);
		--We output the std_logic_vector without the buffer.
		r <= temp(31 downto 0);
		zero <= '1' when (unsigned(temp(31 downto 0)) = 0) else '0';
		
end synth;
