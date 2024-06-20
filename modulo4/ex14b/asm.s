.section .data

.section .text
	.global join_bits    	# int join_bits(int a, int b, int pos)

join_bits:
#prologue
	pushl %ebp      	
	movl %esp, %ebp
	
	subl $4, %esp		#armazena espaco para um param
	movl $0, %eax		#limpa o registo eax

condicao:						
	cmpl $0,8(%ebp)
	je condicao2		#salta para o condicao2 se a = 0
	jmp condicao4		#salta para o condicao4 se a !=0
	
condicao2:
	cmpl $-1,12(%ebp)
	je condicao3		#salta para o condicao3 se b não existir
	jmp condicao4		#salta para o condicao4 se b existir

condicao3:
	cmpl $31,16(%ebp) 	#verifica se o pos=31
	je end				#salta para o fim
	jmp troca			#salta para troca se pos for diferente de 31
	
condicao4:
	cmpl $-1,8(%ebp)	
	je condicao5		#salta para o condicao se a não existir
	jmp troca			#salta para troca se a existir
	
condicao5:
	cmpl $0,12(%ebp) 
	je condicao6		#salta para o condicao6 se o b=0
	jmp troca			#salta para troca com b!=0

condicao6:
	cmpl $31,16(%ebp)	#verifica se o pos=31
	je retorno			#salta para retorno
	jmp troca			#salta para troca se pos for diferente de 31

retorno:
	decl %eax			#iguala eax a -1
	je end				#salta para o fim
	
troca:
	NOTl %eax				# inverte o eax
	movl 16(%ebp), %ecx		# move pos para ecx
	incl %ecx				# incrementa a posição em 1
	SALl %cl, %eax			# shifts em eax (pos+1)vezes
	
	movl %eax, -4(%ebp)		#guarda a mascara do eax na stack
	
	ANDl 12(%ebp), %eax		# AND b com eax
	
	movl -4(%ebp), %edx		# move a mascara para o edx
	NOTl %edx				# inverte o edx
	
	ANDl 8(%ebp), %edx		# AND a com a mascara ao contrario
	
	ORl %edx, %eax			# OR edx com o eax

end:
	#epilogue
	movl %ebp, %esp  	
	popl %ebp     	
	ret
