# projeto_relogio
Projeto de Design de Computadores - Insper 2019
Por Hugo Carl, Guilherme Leite e Rafael Rosenzvaig

Design de Computadores: Processador para relógio
Guilherme Leite
Hugo Carl
Rafael Vieira

INSTRUÇÕES DE USO:

- Para gerar o código binário, é necessário rodar o programa python "parser.py" localizado na pasta "assemblyparser". Para isso, é necessário que o arquivo do código assembly esteja nessa mesma pasta e devidamente formatado.
- Com o código binário pronto, deve-se colocar este código binário no código VHDL da rom "rom.vhd" na seção referente ao código binário.
- Depois, deve-se compilar e colocar o código em uma placa FPGA utilizando o programa Quartus Prime.

Arquitetura: Registrador-Registrador

O relógio possui 5 entradas, a base de tempo e 5 botões que tem as seguintes funções :
Adiciona segundos (AS);
Adiciona minutos (AM);
Adiciona horas (AH);
Reset clock (RC);
Seleciona Base de Tempo (TSEL)

Os dados gerados pelas entradas (DATAIN) passam pelo processador e o resultado das operações (DATAOUT) é guardado no registrador do display de sete segmentos correspondente ao seu endereço, que é apontado pelo decodificador de endereços (DECO). 
Além disso, o microprocessador faz operações internas de soma e jmps, baseados no código assembly.

Fluxo de Dados:
	As instruções para a execução ficam armazenadas na ROM, que é endereçada pelo program counter (PC), que pode tanto incrementa a instrução quanto endereça diretamente uma linha da ROM devido a um jump. A ULA realiza operações lógicas e de soma ou comparação pass through e , assim pode acionar a Flag quando o comp é verdadeiro. As operações são indicadas pela unidade de controle (UC), que além disso controla os três Mux do processador, e a leitura e escrita do Banco de registradores. O ADDR identifica o endereço do registrador correspondente a um display que deve ser lido ou escrito.


Tamanho das instruções: 21 bits;
Total de registradores = 2^3 = 8;
Total de instruções = 9 (MOV, ADD, COMP, JE, JMP, COMPI, WRITE, READ, COMPR)

Instruções em Assembly:  
IINICIO:
mov %hd, $0x00        
mov %hu, $0x00
mov %md, $0x00
mov %mu, $0x00
mov %sd, $0x00
mov %su, $0x00
write %hd, $0x05
write %hu, $0x04
write %md, $0x03
write %mu, $0x02
write %sd, $0x01
write %su, $0x00
SOMAUSEG:
add %su, $0x01
write %su, $0x00
read %tmp1, $0x06 --AS
comp %tmp1, $0x01
je ADDSEG
jmp ADD
ADDSEG:
add %su, $0x01
write %su, $0x00
comp %su, 0x0A
je MOVSU
ADD:
read %tmp1, $0x06 --AM
comp %tmp1, $0x02
je SOMAMU
read %tmp1 ,$0x06 --AH
comp %tmp1, $0x04
je SOMAHU
read %tmp1 ,$0x06 --RC
comp %tmp1, $0x08
je INICIO
comp %su, 0x0A
je MOVSU
COMPSEG:
comp %sd, 0x6
je MOVSD
COMPMU:
comp %mu, 0x0A
je MOVMU
COMPMD:
comp %md, 0x6
je MOVMD
COMPHU:
comp %hu, 0x0A
je SOMAHD
COMPG:
compi %hu, 0x4, %tmp1
compi %hd, 0x2, %tmp2
comp %tmp1, 0x00
je LOOP
comp %tmp2, 0x00
je LOOP
compr %tmp1, %tmp2
je INICIO
jmp LOOP
MOVSU:
mov %su, $0x00
write %su, $0x00
SOMASD:
add %sd, $0x01
write %sd, $0x01
jmp COMPSEG
MOVSD:
mov %sd, $0x00
write %sd, $0x01
SOMAMU:
add %mu, $0x01
write %mu, $0x02
jmp COMPMU
MOVMU:
mov %mu, $0x00
write %mu, $0x02
SOMAMD:
add %md, $0x01
write %md, $0x03
jmp COMPMD
MOVMD:
mov %md, $0x00
write %md, $0x03
SOMAHU:
add %hu, $0x01
write %hu, $0x04
jmp COMPHU
SOMAHD:
mov %hu, $0x00
write %hu, $0x00
add %hd, $0x01
write %hd, $0x05
jmp COMPG
LOOP:
read %tmp1, $0x10 --BT
comp %tmp1, $0x10
je SOMAUSEG
jmp LOOP


Pseudo Código: 

int su, sd, mu, md, hu, hd;
a cada segundo:
	su++;
if su == 10:
		su = 0;
		sd++;
if sd == 6:
	sd = 0;
	mu++;
if mu == 10:
	mu = 0;
	md ++;
if md == 6:
	md = 0;
	hu++;
if hu == 10:
	hu = 0;
	hd++;
if hu == 4 && hd == 2:
	hu = 0;
	hd = 0;

Problemas encontrados durante o Projeto:  

Os maiores problemas encontrados durante o projeto foram relacionados à linguagem vhdl e ao fluxo de dados. Quando programando em VHDL, o grupo se deparou com problemas de lógica combinacional e confusões sobre conceitos básicos do vhdl. Mesmo assim, procurou-se ajuda e os problemas foram resolvidos rapidamente.
Além disso, o grupo deveria ter se planejado mais em relação ao projeto e a entrega final, no que se diz aos componentes e lógicas básicas, que foram definidas nas primeiras etapas do projeto. Talvez com um pouco mais de organização, poderia-se ter chegado em mais funcionalidades de forma mais rápida e com menos problemas bobos ao longo do caminho, como por exemplo o código assembly, que não previa vários pontos fracos da arquitetura e que poderiam ter sido resolvidos antes.


		

