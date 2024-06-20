.section .data
	.global ptrgrades
	.global ptrfreq
	.global num
	
.section .text
	.global frequencies
	.global contar
	
frequencies:
	#prologue
	pushl %ebp
	movl %esp, %ebp
	pushl %edi						#push ao conteudo em edi
	pushl %esi						#push ao conteudo em esi
	pushl %ebx

		
	movl $0, %ebx					#inicia a 0 o contador de frequencias
	movb $0, %cl					#inicia a 0 o contador de frequencias
	movl $0, %edx					#inicia a 0 o contador de notas					
	movl ptrgrades, %edi			#move o endereço do vetor das notas para edi
	movl ptrfreq, %esi				#move o endereço do vetor de frequencias para esi
	
loop:
	cmpb $21, %cl					#verifica se o vetor de frequencias ja acabou
	je fim							#caso o vetor tenha acabado, termina o programa
	
loop2:
	cmpl num, %edx					#verifica se o vetor de notas ja acabou
	je end_loop						#termina o ciclo caso tenha acabado
	movb (%edi, %edx, 1), %al		#move uma das notas do vetor de notas para o registo al
	cmpb %cl,%al					#verifica se o a nota guardada é igual à nota guardada em cl
	je contador						#aumenta o contador caso as notas sejam iguais
	incl %edx						#incrementa o index do vetor
	jmp loop2						#reinicia o loop
	
contador:
	incl %ebx						#aumenta o contador de frequencias de uma nota
	incl %edx						
	jmp loop2

end_loop:
	movl %ebx, (%esi)				#move a contador de frequencias para o vetor de frequencias da nota guardada em cl
	addl $4, %esi					#vai para o proxima posiçao do vetor de frequencias
	addb $1, %cl					#vai para a proxima nota a verificar
	movl $0, %edx					#faz reset ao contador do vetor de notas
	movl $0, %ebx					#faz reset ao contador de frequencias
	jmp loop						#reinicia o loop principal
	
fim:
	#epilogue
	popl %ebx
	popl %esi						#restaura o conteudo em esi
	popl %edi						#restaura o conteudo em edi
	movl %ebp, %esp
	popl %ebp
	ret
	

