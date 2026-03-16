.global _start
_start:
	
mov r1, #10
mov r0, #5 
add r1, #5 @ add é usado para somar algo ao registrador | python: r1 = r1 + 5
sub r1, #5 @ sub é usado para subtrair algo ao registrador | python: r1 = r1 - 5
mul r1, r0 @ mul é usado para multiplicar algo no registrador,
@ o multiplicador terá que ser um registrador também | python: r1 = r1 * r0