library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity grupo1 is
generic(sem_bits:natural:=3);
port(
	clk, rst : in std_logic;
	s1, s2 : in std_logic; -- Sensores de passagem de veiculos
	b1, b2 : in std_logic; -- Botoes para passagem de pedestre
	gfp1, gfp2 : out std_logic_vector(sem_bits-1 downto 0);
	gfs1, gfs2 : out std_logic_vector(1 downto 0)
); 
end entity;

architecture arch1 of grupo1 is 
begin
end architecture;

