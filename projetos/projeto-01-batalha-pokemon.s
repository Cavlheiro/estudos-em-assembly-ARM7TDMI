.global _start
_start:
	
/* 
O Projeto: "Calculadora de Dano de Batalha"
O cenário:

O seu Pokémon tem um Ataque Base.

Ele usa um item que dobra o ataque (usaremos MUL ou ADD).

O oponente tem uma Defesa.

O dano final é: (Ataque Total - Defesa).
*/

mov r0, #5 @ atk base
mov r1, #2 @ item que dobra o atk, multiplicador 2
mov r2, #15 @ defesa do personagem
mul r3, r0, r1 @ ataque total
sub r4, r2, r3 @ resultado do atk total - defesa
mov r2, r4 @ vida do oponente após o dano

cmp r2, #0
ble oponente_derrotado @ compara se r2 é menor ou igual a 0

mov r5, #0x1 @ r5 = 1 ainda em batalha!
b fim

oponente_derrotado:
mov r5, #0xFF @ r5 = 0xFF sucesso!
	
fim:
b fim
