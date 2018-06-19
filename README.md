## Projeto final da matéria de dispositivos lógicos programáveis
Semáforos autônomos para veículos e pedestres

[![Ilustração doproblema](https://github.com/mftutui/DLP29006/blob/master/imagem-projeto-DLP.jpg)

## Descrição do projeto

## GRUPO 1:
O grupo 1 de semáforos será composto por:
- 2 grupos focais progressivos (GFP)
- 2 grupos focais simples (verde e vermelho para pedestres) (GFS m1)
- 1 botão em cada grupo focal simples para a travessia do pedestre
- 1 sensor de presença em cada sentido de via (via 1 e via 2) para verificação de passagem de veículos

### Comportamento padrão:
- As vias principais estarão normalmente abertas para passagem de carros em ambos os sentidos.
- As passagens para os pedestres estarão normalmente fechadas.
- Constantemente um sensor temporizado verifica a quantidade de segundos sem a passagem de carros por meio de sensores instalados nas pistas.
- Todos os tempos estipulados devem ser genéricos.
- tSemVeiculo = 12s, tTravessia = 15s, tMax = 120s
### Ao acionar o botão para a travessia de pedestres o contador verifica:
- Se nos tSemVeiculo anteriores não houver a passagem de carros em nenhum dos sentidos o GFP muda progressivamente do estado verde para vermelho e ao final o GFS m1 muda seu estado de vermelho para verde por tTravessia.
- Se ambas as vias estiverem com o contador inferior a tSemVeiculo, o pedestre pode esperar até tMax para que sua passagem seja permitida. Após o período de espera o GFS m1 fica em verde por tTravessia. Após este período o GFP mudará seu estado progressivamente novamente até mudar para verde.
- Se durante o tMax o sensor temporizado atingir o tSemVeiculo o GFP muda progressivamente do estado verde para vermelho e ao final o GFS m1 muda seu estado de vermelho para verde por tTravessia.

## GRUPO 2:
O grupo 2 de semáforos será composto por:
- 2 grupos focais progressivos (GFP)
- 1 grupo focal simples (verde, amarelo e vermelho) (GFS m2)
- 1 sensor de presença em cada via (via 1, 2 e 3 )para verificação de passagem de veículos

### Comportamento padrão:
- As vias principais estarão normalmente abertas para passagem de carros em ambos os sentidos.
- A passagem da via 3 estará normalmente fechada, enquanto a passagem da via 2 para a via 4 é livre.
- Constantemente um sensor temporizado verifica a quantidade de segundos sem a passagem de veículos por meio de sensores instalados nas vias 1 e 2.
- Todos os tempos estipulados devem ser genéricos, passíveis de alteração.
- tSemVeiculo = 12s, tTravessia = 15s, tMax = 120s.
### Via 3:
- Se nos tSemVeiculo anteriores não houver a passagem de veículos em nenhum dos sentidos o GFP muda progressivamente do estado verde para vermelho e ao final o GFS m2 muda seu estado de vermelho para verde por tTravessia.
- Se ambas as vias estiverem com o contador inferior a tSemVeiculo, o veículo na via 3 pode esperar até tMax para que sua passagem seja permitida. Após o período de espera o GFS m2 fica em verde por tTravessia. Após este período o GFP das vias 1 e 2 mudarão seus estados progressivamente novamente até mudar para verde.
- Se durante o tMax o sensor temporizado atingir o tSemVeiculo o GFP muda progressivamente do estado verde para vermelho e ao final o GFS m2 muda seu estado de vermelho para verde por tTravessia.

<b>Built with</b>
- [Quartus](https://www.altera.com

- Engenharia de telecomunicações - IFSC SJ
