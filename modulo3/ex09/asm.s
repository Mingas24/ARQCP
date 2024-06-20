.section .data

.global num
.global ptrvec
.global x

.section .text

.global vec_search # short* vec_search(void)

vec_search:

	# prologue
	pushl %ebp 				# save previous stack frame pointer
	movl %esp, %ebp 		# the stack frame pointer for sum function
	
	pushl %ebx

	movl $0, %eax           #move 0 para eax
	movb x, %bl				#move procurado to bl
	movl ptrvec, %ecx		#move ptrvec para ecx
	movb $0, %dl			#move 0 para dl
	
	percorrerVetor:
		cmpb num, %dl		#compara dl com num
		je end				#salta para o fim se dl for igual ao num(número de elementos do array)
		cmpb (%ecx), %bl    #compara o valor apontado pelo registo ecx com bl
		je end_1			#salta para end_1 se forem iguais
		addl $2, %ecx		#avança uma posição no array
		incl %edx			#incrementa edx
		jmp percorrerVetor	#recomeça o loop
		
	end_1:
		movl %ecx, %eax		#move o endereço de memória para eax

	end:

	# epilogue
	popl %ebx
	movl %ebp, %esp 		# restore the previous stack pointer ("clear" the stack)
	popl %ebp 				# restore the previous stack frame pointer
	ret
