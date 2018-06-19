library ieee;
use ieee.std_logic_1164.all;

entity div_clk is
		generic(n:natural:= 50000000); -- valor 50Mhz: 50 000 000
	
		port
		(
			clk, rst: in  std_logic;
			clk_out: out std_logic
		);
	end entity;
	
architecture v1 of div_clk is

begin

clksplit:process (clk,rst) is

variable count : integer range 0 to n := 0;

begin

    if(rst = '1') then   
        count := 0;
        clk_out <= '1';
    elsif(rising_edge(clk)) then
        if(count < n-1) then
            count := count + 1;
            clk_out <= '0';
        else
            count := 0;
            clk_out <= '1';
        end if;
    end if;
	 
end process;

end architecture;