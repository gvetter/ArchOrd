library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity shift_unit is
    port(
        a  : in  std_logic_vector(31 downto 0);
        b  : in  std_logic_vector(4 downto 0);
        op : in  std_logic_vector(2 downto 0);
        r  : out std_logic_vector(31 downto 0)
    );
end shift_unit;

architecture synth of shift_unit is
    signal rot, sl, sr : std_logic_vector(31 downto 0);
begin

	choice: process(op, sl, sr, rot)
	begin
       		case op(1 downto 0) is
			when "00"	=> r <= rot;
			when "10"	=> r <= sl;
			when "11"	=> r <= sr;
			when others	=> r <= rot;
		end case;
	end process;
	
	rotate: process(a, b, op, rot)
	variable op_temp	:std_logic_vector(4 downto 0);
	variable temp		:std_logic_vector(4 downto 0);
	variable rot_var	:std_logic_vector(31 downto 0);
	begin
		-- We use the same thing that we used in the add_sub part (more or less)
		op_temp 	:= (4 downto 1 => '0') & op(0);
		temp		:= std_logic_vector(unsigned(b xor (4 downto 0 => op(0)))+unsigned(op_temp));
		rot_var	:= a;
		for i in 0 to 4 loop
		    if (temp(i) = '1') then
		        rot_var := rot_var(31 - (2**i) downto 0) & rot_var(31 downto 32 - (2**i));
		    end if;
		end loop;
		rot <= rot_var;
	end process;

	sr_process: process(a, b, op)
	variable carry : std_logic;
	variable sr_var: std_logic_vector(31 downto 0);
	begin
		carry	:= op(2) and a(31);
		sr_var:= a;
		for i in 0 to 4 loop
			if (b(i) = '1') then
				sr_var := ((2 ** i) - 1 downto 0 => carry) & sr_var(31 downto 2**i);
			end if;
		end loop;
		sr <= sr_var;
	end process;

	sl_process: process(a, b)
	variable sl_var: std_logic_vector(31 downto 0);
	begin
		sl_var:= a;
		for i in 0 to 4 loop
			if (b(i) = '1') then
				sl_var := sl_var(31 - (2**i) downto 0) & ((2**i) - 1 downto 0 => '0');
			end if;
		end loop;
		sl <= sl_var;
	end process;
		


end synth;
