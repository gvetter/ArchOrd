library ieee;
use ieee.std_logic_1164.all;

entity extend is
    port(
        imm16  : in  std_logic_vector(15 downto 0);
        signed : in  std_logic;
        high   : in  std_logic;
        imm32  : out std_logic_vector(31 downto 0)
    );
end extend;

architecture synth of extend is
begin
    process(imm16, signed, high)
    begin
        if (high = '1') then
            imm32 <= imm16 & (15 downto 0 => '0');
        else
            imm32 <= (15 downto 0 => (signed and imm16(15))) & imm16;
        end if;
    end process;
end synth;
