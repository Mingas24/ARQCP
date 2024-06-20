.section data
	.global num
	.global ptrvec

.section .text
	.global count_seq
	
count_seq:
	
	#prologue
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	
	movl $0,%ebx 			#move 0 para ebx		
	movl $0,%ecx			#move 0 para ecx
	
start_loop:
	movl ptrvec, %eax		#move ptrvec para eax
	cmpl %ecx, num			#compara o valor de ecx com num
	je end_loop				#se for igual encerra o loop
	call verifica1			#chama verifica1
	cmpl $1,%eax			#compara 1 com eax (boolean)
	je true					#se for igual salta para true
	incl %ecx				#adiciona 1 a ecx
	jmp start_loop			#recomeça o loop
	
true:
	call verifica2			#chama verifica2
	cmpl $1, %eax			#compara 1 com eax (boolean)
	je incrementar			#se for igual salta para incrementar
	incl %ecx				#incrementa ecx
	jmp start_loop			#volta ao loop
	
incrementar:
	incl %ebx				#incrementa ebx
	incl %ecx				#incrementa ecx
	jmp start_loop			#volta ao loop
	
end_loop:
	movl %ebx, %eax			#move ebx para eax

#epilogue
	popl %ebx
	movl %ebp, %esp
	popl %ebp
	ret
	
#VERIFICA 2

verifica2:

	#prologue
	pushl %ebp
	movl %esp,%ebp
	
	movl ptrvec,%eax			#move ptrvec para eax
	
	incl %ecx					#incrementa ecx
	movl (%eax,%ecx,4),%edx		#move o offset para edx
	incl %ecx					#incrementa ecx
	cmpl %edx, (%eax,%ecx,4)	#compara edx com o offset
	jg return2					#se for maior salta para return2
	subl $2,%ecx				#subtrai dois a ecx para voltar onde estava antes de entrar no verifica2
	movl $0,%eax				#move 0 para eax (boolean)
	
	#epilogue
	movl %ebp, %esp
	popl %ebp
	ret
	
return2:
	subl $2, %ecx				#subtrai dois a ecx para voltar onde estava antes de entrar no verifica2
	movl $1, %eax				#move 0 para eax (boolean)
	
	#epilogue
	movl %ebp, %esp
	popl %ebp
	ret
	
#VERIFICA 1

verifica1:

	#prologue
	pushl %ebp
	movl %esp,%ebp
	
	movl ptrvec, %eax					#comentarios iguais ao verifica 2 e return 2
	
	movl (%eax,%ecx,4), %edx
	incl %ecx
	cmpl %edx, (%eax,%ecx,4)
	jg return1
	decl %ecx
	movl $0, %eax
	
	#epilogue
	movl %ebp, %esp
	popl %ebp
	ret
	
return1:
	decl %ecx
	movl $1,%eax
	
	#epilogue
	movl %ebp, %esp
	popl %ebp
	ret
