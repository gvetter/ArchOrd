library ieee;
use ieee.std_logic_1164.all;

entity comparator is
    port(
        a_31    : in  std_logic;
        b_31    : in  std_logic;
        diff_31 : in  std_logic;
        carry   : in  std_logic;
        zero    : in  std_logic;
        op      : in  std_logic_vector(2 downto 0);
        r       : out std_logic
    );
end comparator;

architecture synth of comparator is
begin

process(a_31, b_31, diff_31, carry, zero, op)
begin
	case op is
		when "011" =>
			if(diff_31 = '0') then
				r <= '0';
			else
				r <= '1';
			end if;
			
		
		when "101" =>
			if(carry = '1') then
				r <= '1';
			else
				r <= '0';
			end if;
		
		
		when "110" =>
			if(carry = '1') then
				r <= '0';
			else
				r <= '1';
			end if;
		
		
		when "001" =>
			r <= (not a_31 and b_31) or (not diff_31 and (not a_31 xor b_31));
			
		when "010" =>
			r <= (not b_31 and a_31) or (diff_31 and (not a_31 xor b_31));
			
		when others =>
				
			if(diff_31 = '0') then
				r <= '1';
			else
				r <= '0';
			end if;
		end case;
	
			

end process;
end synth;
