.global _start
_start:
	
mov r0, #0x00 @ r0 começará com 0 pokebolas | python: r0 = 0
cmp r0, #0x00 @ compara r0 com 0
beq comprar_mais @ beq: caso r0 for IGUAL a 0 ou 0x00(dá na mesma) eu vou para: comprar_mais

b fim /* caso a primeira condição não for executada, ela será ignorada e 
e vão pular para essa, que significa b: vai para: fim*/

comprar_mais:

mov r0, #0x0a
b fim

fim:

mov r1, #0xFF @ Sucesso!
b fim