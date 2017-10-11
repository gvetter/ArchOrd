library ieee;
use ieee.std_logic_1164.all;

entity ROM is
    port(
        clk     : in  std_logic;
        cs      : in  std_logic;
        read    : in  std_logic;
        address : in  std_logic_vector(9 downto 0);
        rddata  : out std_logic_vector(31 downto 0)
    );
end ROM;

architecture synth of ROM is
    component ROM_Block is
        port(
            address : in  std_logic_vector(9 downto 0);
            clock   : in  std_logic;
            q       : out std_logic_vector(31 downto 0)
        );
    end component;
    signal intern_data : std_logic_vector(31 downto 0);
    signal read_reg  : std_logic;

begin

    rom_block_0 : ROM_Block port map(
            address => address,
            clock   => clk,
            q       => intern_data
        );
	


	read: process(clk, read, cs)
    begin
        if (rising_edge(clk)) then
            read_reg <= read and cs;
        end if;
    end process;

	process(read_reg, intern_data)
    begin
        rddata <= (others => 'Z');

        if (read_reg = '1') then
            rddata <= intern_data;
        end if;
    end process;

end synth;
