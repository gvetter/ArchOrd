library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.unsigned;

entity decoder is
    port(
			address : in  std_logic_vector(15 downto 0);
			cs_LEDS : out std_logic;
			cs_RAM  : out std_logic;
			cs_ROM  : out std_logic;
			cs_BUTTONS: out std_logic
    );
end decoder;

architecture synth of decoder is
begin

	choice: process(address)
	begin

	--we reset everything, but the one we have to take
	--just in case we hit the empty part

	cs_LEDS <= '0';
	cs_RAM <= '0';
	cs_ROM <= '0';
	cs_BUTTONS <= '0';
	if(address < X"0FFD") and (address >= X"0000") then
		cs_ROM <= '1';
	elsif (address < X"1FFD") and (address >= X"1000") then
		cs_RAM <= '1';
	elsif (address < X"200D") and (address >= X"2000") then
		cs_LEDS <= '1';
	elsif (address < X"2035") and (address >= X"2030") then
		cs_BUTTONS <= '1';
	end if;
	end process;	

end synth;
