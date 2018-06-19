library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ssv is
port(
	clk, rst : in std_logic;
	s1, s2 : in std_logic; -- Sensor de passagem de veiculo
	veiculo: out std_logic
); 
end entity;

architecture arch1 of ssv is
begin

end architecture;