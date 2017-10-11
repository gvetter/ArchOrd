library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity RAM is
    port(
        clk     : in  std_logic;
        cs      : in  std_logic;
        read    : in  std_logic;
        write   : in  std_logic;
        address : in  std_logic_vector(9 downto 0);
        wrdata  : in  std_logic_vector(31 downto 0);
        rddata  : out std_logic_vector(31 downto 0));
end RAM;

architecture synth of RAM is
    type mem_type is array (0 to 1023) of std_logic_vector(31 downto 0);

    signal memory_array: mem_type;
    signal reg_read    : std_logic;
    signal reg_address : std_logic_vector(9 downto 0);


begin
    process(clk, cs, read, address)
    begin
        if (rising_edge(clk)) then
            reg_read    <= cs and read;
            reg_address <= address;
        end if;
    end process;


    process(memory_array, reg_read, reg_address)
    begin
        rddata <= (others => 'Z');
        if (reg_read = '1') then
            rddata <= memory_array(to_integer(unsigned(reg_address)));
        end if;
    end process;


    process(clk, write, cs)
    begin
        if (rising_edge(clk)) then
            if (write = '1') then
		if (cs = '1') then
                	memory_array(to_integer(unsigned(address))) <= wrdata;
		end if;
            end if;
        end if;
    end process;
end synth;
