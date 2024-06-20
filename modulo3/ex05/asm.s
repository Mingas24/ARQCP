.section .data

.global num
.global ptrvec

.section .text

.global vec_sum # int vec_sum(void)
.global vec_avg # int vec_avg(void)

vec_sum:

	# prologue
	pushl %ebp 				# save previous stack frame pointer
	movl %esp, %ebp 		# the stack frame pointer for sum function

	movl $0, %eax           #move 0 para eax
	movl ptrvec, %ecx		#move ptrvec para ecx
	movl $0, %edx			#move 0 para edx
	
	somaElementos:
		cmpl num, %edx		#compara edx com num(número de elementos no array)
		je end_1			#salta para o fim se forem iguais
		addl (%ecx), %eax	#adiciona o valor apontado ((%ecx)) a eax 
		addl $4, %ecx		#passa para o valor seguinte no array
		incl %edx			#incrementa 1 a edx
		jmp somaElementos
	
	end_1:
	
	# epilogue
	movl %ebp, %esp 		# restore the previous stack pointer ("clear" the stack)
	popl %ebp 				# restore the previous stack frame pointer
	ret

vec_avg:
	
	# prologue
	pushl %ebp 				# save previous stack frame pointer
	movl %esp, %ebp 		# the stack frame pointer for sum function
	
	call vec_sum			#chama  a função vec_sum
	movl num, %ecx			#mov num para ecx
	movl $0, %edx			#move 0 para edx
	cmpl $0, %ecx			#compara 0 com ecx
	je end_1				#se ecx for 0, logo array vazio salta para end
	cdq						#extende o sinal
	idivl %ecx				#divide o valor de eax (soma) pelo num de elementos (ecx)
	jmp end_1
	
	end_2:
		movl $0, %eax		#move 0 para eax
		
	end_3:
	
	# epilogue
	movl %ebp, %esp 		# restore the previous stack pointer ("clear" the stack)
	popl %ebp 				# restore the previous stack frame pointer
	ret
