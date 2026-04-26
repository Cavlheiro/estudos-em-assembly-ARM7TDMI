.global _start
_start:
	
	/* AULA 04: O GRANDE MAPA DOS BRANCHS
   Objetivo: Testar todas as condições de pulo.
*/

.global _start
_start:

    @ --- TESTE 1: IGUALDADE ---
    mov r0, #10
    mov r1, #10
    cmp r0, r1
    beq e_igual        @ Pula se r0 == r1 (Z=1)
    b erro             @ Se não pulou, algo está muito errado!

e_igual:
    @ --- TESTE 2: DIFERENÇA ---
    mov r0, #5
    mov r1, #2
    cmp r0, r1
    bne e_diferente    @ Pula se r0 != r1 (Z=0)
    b erro

e_diferente:
    @ --- TESTE 3: MAIOR QUE ---
    mov r0, #20
    mov r1, #10
    cmp r0, r1
    bgt e_maior        @ Pula se r0 > r1
    b erro

e_maior:
    @ --- TESTE 4: MENOR QUE ---
    mov r0, #5
    mov r1, #10
    cmp r0, r1
    blt e_menor        @ Pula se r0 < r1
    b erro

e_menor:
    @ --- TESTE 5: MAIOR OU IGUAL ---
    mov r0, #30
    mov r1, #30
    cmp r0, r1
    bge maior_igual    @ Pula se r0 >= r1
    b erro

maior_igual:
    @ --- TESTE 6: MENOR OU IGUAL ---
    mov r0, #15
    mov r1, #20
    cmp r0, r1
    ble menor_igual    @ Pula se r0 <= r1
    b erro

menor_igual:
    @ --- SUCESSO TOTAL ---
    mov r3, #0xAA     @ AA = Sucesso em todos os testes!
    b fim              @ Salto INCONDICIONAL para o fim

erro:
    mov r3, #0xEE     @ EE = Algum teste falhou

fim:
    b fim              @ Loop infinito de segurança