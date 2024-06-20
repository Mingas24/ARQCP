.section .data

.global num
.global ptrvec

.section .text

.global vec_greater20 # int vec_greater20(void)

vec_greater20:

# prologue
	pushl %ebp 				# save previous stack frame pointer
	movl %esp, %ebp 		# the stack frame pointer for sum function
	pushl %esi
	pushl %ebx
	
#body
	movl $0, %eax 		#move 0 para eax
	movl $0, %ebx 		#move 0 para ebx
	movl $0, %ecx 		#move 0 para ecx
	movl $0, %edx 		#move 0 para edx
	movl ptrvec, %esi 	#move ptrvec para esi
	
verificarArray:
	cmpl num, %ecx 		#compara o num com ecx
	je end 				#se for igual, salta para o fim do array
	movl (%esi), %edx 	#copia os últimos 4 bytes para edx
	addl $4, %esi 		#avança 4 bytes
	movl (%esi), %ebx 	#copia os primeiros 4 bytes para ebx
	cmpl $0, %ebx 		#compara 0 com ebx
	jg incrementar 		#se for maior, incrementa (se for maior que 0 será maior que 20)
	cmpl $20, %edx 		#compara 20 com edx
	jg incrementar 		# se for maior, incrementa
	addl $4, %esi 		#avança para o próximo elemento do array
	incl %ecx 			#incrementa 1 a ecx
	jmp verificarArray 	#recomeça o loop
	
incrementar:
	incl %eax 			#incrementa 1 a eax
	incl %ecx 			#incrementa 1 a ecx
	addl $4 ,%esi 		#avança para o próximo elemento do array
	jmp verificarArray 	#volta para o loop
	
end:
# epilogue
	popl %ebx
	popl %esi
	movl %ebp, %esp 		# restore the previous stack pointer ("clear" the stack)
	popl %ebp 				# restore the previous stack frame pointer
	ret

