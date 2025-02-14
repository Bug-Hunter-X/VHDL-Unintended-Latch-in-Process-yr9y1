```vhdl
library ieee;
use ieee.std_logic_1164.all;

entity my_entity is
    port (
        clk : in std_logic;
        data_in : in std_logic_vector(7 downto 0);
        data_out : out std_logic_vector(7 downto 0)
    );
end entity;

architecture behavioral of my_entity is
    signal data_reg : std_logic_vector(7 downto 0) := (others => '0'); -- Initialize for predictable behavior
begin
    process (clk) begin
        if rising_edge(clk) then
            data_reg <= data_in;
            data_out <= data_reg; -- Proper assignment within the process
        end if;
    end process;
end architecture;
```