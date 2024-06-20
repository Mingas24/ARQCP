.section .data

.section .text
	.global mixed_sum
	
mixed_sum:
#prologue
	pushl %ebp
	movl %esp, %ebp
	
	pushl 16(%ebp)		#guarda o 3ºparam na stack --> pos
	pushl 12(%ebp)		#guarda o 2ºparam na stack --> b
	pushl 8(%ebp)		#guarda o 1ºparam na stack --> a
	
	call join_bits		#chama a funcao join_bits (junta a+b)
	
	addl $12, %esp		#reserva espaço na stack para 3 variaveis
	
	movl %eax, %edx		#passa o resultado da funcao join_bits em edx
	push %edx			#guarda o resultado da funcao join_bits na stack
	
	pushl 16(%ebp)		#guarda o 3ºparam na stack --> pos
	pushl 8(%ebp)		#guarda o 1ºparam na stack --> b
	pushl 12(%ebp)		#guarda o 2ºparam na stack --> a
	
	call join_bits		#chama a funcao join_bitsn (junta b+a)
	
	addl $12, %esp		#reserva espaço na stack para 3 variaveis
	
	popl %edx			#recupera o resultado da primeira chamada da funcao
	addl %edx, %eax		#soma o resultado da segunda chamada da funcao com a primeira chamada
						#fica guardado em eax
						
#epilogue
	movl %ebp, %esp
	popl %ebp
	ret
	
