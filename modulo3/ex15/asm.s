.section .data

.global num
.global ptrvec

.section .text

.global sum_first_byte # sum_first_byte(void)

sum_first_byte:

	# prologue
	pushl %ebp 				# save previous stack frame pointer
	movl %esp, %ebp 		# the stack frame pointer for sum function
	pushl %ebx
	
	movl $0, %eax			#move 0 para eax
	movl ptrvec, %ecx		#move ptrvec para ecx
	movl $0, %edx			#move 0 para edx
	
	percorrerVetor:
		cmpl num, %edx		#compara num com edx
		je end				#salta para o fim se forem iguais
		movsxb (%ecx), %ebx	#move o primeiro byte do apontado por ecx para ebx
		addl %ebx, %eax		#adiciona ebx a eax
		addl $4, %ecx		#avança uma posição no array
		incl %edx			#incrementa edx
		jmp percorrerVetor	#recomeça o loop
	
	end:
	
	popl %ebx
	# epilogue
	movl %ebp, %esp 		# restore the previous stack pointer ("clear" the stack)
	popl %ebp 				# restore the previous stack frame pointer
	ret
