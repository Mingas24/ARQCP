.section .data

.section .text
	.global changes_vec

changes_vec:
#prologue
	pushl %ebp      	
	movl %esp, %ebp 

	movl 8(%ebp), %edx  #move o 1ºparam para edx (*ptrvec)
	movl 12(%ebp), %ecx #move o 2ºparam para ecx (num)

loop:
	cmpl $0,%ecx		#verifica se num é igual a ecx (vetor terminou)
	je end				#salta se for verdade
	pushl %ecx 			#guarda o valor de ecx na stack
	pushl %edx 			#guarda o valor de edx na stack
	
	call changes 		#chama a funcao changes
	
	popl %edx 			#restaura o valor de edx da stack
	popl %ecx 			#restaura o valor de ecx da stack
	addl $4, %edx 		#incrementa para o proximo int, ou seja, de 4 em 4 bytes
						
	decl %ecx			#decrementa o contador ecx, quando é zero sai do ciclo
	jmp loop 			#volta ao inicio

end:	
#epilogue
	movl %ebp, %esp 
	popl %ebp 
	ret
