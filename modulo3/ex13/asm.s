.section .data

.global num
.global ptrvec

.section .text

.global keep_positives # void keep_positives(void)

keep_positives:

	# prologue
	pushl %ebp 				# save previous stack frame pointer
	movl %esp, %ebp 		# the stack frame pointer for sum function
	
	movl ptrvec, %ecx		#move ptrvec para ecx
	movl $0, %edx			#move 0 para edx
	
	percorrerVetor:
		cmpl num, %edx		#compara num com edx
		je end				#salta para o fim se num for igual a edx
		cmpl $0, (%ecx)		#compara ecx com 0
		jl alterar			#salta para alterar se ecx for menor que 0
		addl $4, %ecx		#avança uma posição no array
		incl %edx			#incrementa edx
		jmp percorrerVetor	#recomeça o loop
		
	alterar:
		movl %edx, (%ecx)	#move edx para o valor apontado por ecx
		addl $4, %ecx		#avança uma posição no array
		incl %edx			#incrementa edx
		jmp percorrerVetor	#volta para o loop
			
	end:
		
	# epilogue
	movl %ebp, %esp 		# restore the previous stack pointer ("clear" the stack)
	popl %ebp 				# restore the previous stack frame pointer
	ret
