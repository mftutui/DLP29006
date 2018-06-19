library ieee;
use ieee.std_logic_1164.all;

entity projeto_semaforo is
	generic(f_clk:natural:= 5000);
	
	port
	(
		clk_in, rst_in: in  std_logic;
	);
end entity;

architecture ifsc of projeto_semaforo is
	
	component div_clk is
		generic(n:natural:= 5);
	
		port
		(
			clk, rst: in  std_logic;
			clk_out: out std_logic
		);
	end component;
	
	component sem_simples is
		generic(tempo_fechado:natural:= 5, B : natural := 4); 
		
		port
		(
			presenca: in std_logic;
			clk: in std_logic;
			verde: out std_logic;
			amarelo: out std_logic;
			vermelho: out std_logic;
			s1: out std_logic_vector (B-1 downto 0);
			s2: out std_logic_vector (B-1 downto 0)
		);
	end component;
	
	component sem_prog is 
		generic(tempo_fechado:natural:= 5); 
		
		port
		(
			presenca: in std_logic;
			clk: in std_logic;
			verde: out std_logic_vector(3 downto 0);
			amarelo: out std_logic;
			vermelho: out std_logic_vector(3 downto 0)
		);
	end component;
	
	component pedestre is
	port(
		sensor1,sensor2, botao1,botao2 : in
		sem_ped1, sem_ped2, sem_prog1, sem_prog2: out 
	
	)
	
	
	component sem_pedestre is
		generic(tempo_fechado:natural:= 5); 
		
		port
		(
			botao: in std_logic;
			clk: in std_logic;
			verde: out std_logic;
			vermelho: out std_logic
		);
	end component;
	
	component sensor_presenca is
		port
		(
			clk: in std_logic;
			carro: in std_logic;
			t_sem_carro: out std_logic
		);
	
signal rst:std_logic; 	
	
begin
	
	divsor_clk:component div_clk
		generic map (n => f_clk)
	
		port map
		(
			clk => clk_in,
			rst => rst,
			clk_out => XXX
		);
		
end architecture;