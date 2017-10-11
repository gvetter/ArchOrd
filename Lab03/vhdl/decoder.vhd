library ieee;
use ieee.std_logic_1164.all;

entity decoder is
    port(
        address : in  std_logic_vector(15 downto 0);
        cs_LEDS : out std_logic;
        cs_RAM  : out std_logic;
        cs_ROM  : out std_logic
	cs_BUTTONS: out std_logic;
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
	if(address < "0x0FFD" and address >= "0x0000") then
		cs_ROM <= '1';
	elsif (address < "0x1FFD" and address >= "0x1000") then
		cs_RAM <= '1';
	elsif (address < "0x200D" and address >= "0x2000") then
		cs_LEDS <= '1';
	elsif (address < "0x2035" and address >= "0x2030") then
		cs_BUTTONS <= '1';
	end if;
	end process;	

end synth;
