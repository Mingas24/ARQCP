.section .data
	.global ptrsrc
	.global ptrdest
	.global num
	
.section .text
	.global sort_without_reps
	
sort_without_reps:
	#prologue
	pushl %ebp
	movl %esp, %ebp

	movl ptrsrc, %eax				#move o endereco do vetor desordenado para eax
	
	call ordena						#chama a funcao que ordena o vetor
	call copia						#chama a funcao que copia o vetor para ptrdest

	#epilogue
	movl %ebp, %esp
	popl %ebp
	ret
	
	
ordena:
	#prologue
	pushl %ebp
	movl %esp, %ebp
	pushl %ebx						#push ao conteudo em ebx
	pushl %edi						#push ao conteudo em edi
	pushl %esi						#push ao conteudo em esi
	
	movl $0, %ecx					#move 0 para ecx
	movl num, %ebx					#move num para ebx
	
start_loop:
	cmpl %ecx, %ebx					#condicao de paragem do loop, quando já não houver mais elementos a iterar salta fora
	je end_loop						#salta fora quando já não houver mais elementos a iterar
	movl %ecx, %edx					#move ecx para edx
	incl %edx						#incrementa edx em 1 para no proximo loop comecar a iterar na posicao seguinte a ecx

loop2:
	cmpl %edx, num					#condicao de saida do loop, quando já não houver mais elementos apos ecx a iterar salta fora
	je end_loop2					#salta fora quando já tiver acabado de iterar
	movl (%eax, %edx, 4), %edi		#move a posicao do valor do vetor a que queremos comparar com o fixo(ecx) para edi
	movl (%eax, %ecx, 4), %esi		#move a posicao do valor fixo a comparar para esi
	cmpl %esi, %edi					#compara os valores
	jl troca						#se edi for menor que esi então faz-se a troca
	incl %edx						#incrementamos uma posicao no vetor para comparar com o valor fixo em ecx
	jmp loop2						#recomeca o loop
	
troca:
	movl %edi, (%eax, %ecx, 4)		#move edi para a posicao de esi
	movl %esi, (%eax, %edx, 4)		#move esi para a posicao de edi
	incl %edx						#incrementamos uma posicao no vetor para comparar com o valor fixo em ecx
	jmp loop2						#recomeca o loop

end_loop2:		
	incl %ecx						#incrementa o vetor em uma posicao para se obter uma nova posicao fixa a comparar
	jmp start_loop					#recomeca o loop
	
end_loop:
	popl %esi						#restaura o conteudo em esi
	popl %edi						#restaura o conteudo em edi
	popl %ebx						#restaura o conteudo em ebx
	#epilogue
	movl %ebp, %esp
	popl %ebp
	ret
	
	
copia:
	#prologue
	pushl %ebp
	movl %esp, %ebp
	pushl %edi						#push ao conteudo em edi
	
	movl ptrdest, %ecx				#move o endereco do vetor de destino para ecx
	movl $0, %edi					#inicializa o contador de numeros passados para o vetor de destino a 0
	
start_loop2:	
	cmpl $0, num					#condição de saida do loop, verifica se chegou ao fim do vetor origem
	je end_loop3					#salta fora do loop se ja tiver acabado todo o vetor origem
	movl (%eax), %edx				#move o apontado por eax para edx para verificar se já existem no vetor de destino
	pushl %eax						#push ao conteudo em eax
	call verifica_repetido			#chama a funcao que vai verificar se edx ja existe no vetor de destino
	cmpl $0, %eax					#se eax for igual a 0 ou seja edx não existe no vetor de destino entao ele na proxima linha salta para adicionar
	je move_ptrdest					#salta para adicionar edx ao vetor de destino se a comparacao anterior der igual
	popl %eax						#restaura o conteudo em eax
	addl $4, %eax					#incrementa o endereco em eax em 4 bytes para aceder ao proximo valor do vetor
	decl num						#decrementa em 1 o numero de valores a iterar
	jmp start_loop2					#recomeca o loop
	
move_ptrdest:
	movl %edx, (%ecx)				#move edx para o apontado para o vetor de destino
	popl %eax						#restaura o conteudo em eax
	addl $4, %eax					#incrementa o endereco em eax para a proxima posição
	addl $4, %ecx					#incrementa o endereco em ecx para a proxima posição
	decl num						#decrementa em 1 o numero de valores a iterar
	incl %edi						#incrementa o contador de numeros passados para o vetor de destino em 1
	jmp start_loop2					#recomeca o loop
	
end_loop3:
	movl %edi, %eax					#move o contador para eax para retornar
	popl %edi						#restaura o conteudo de edi
	#epilogue
	movl %ebp, %esp
	popl %ebp
	ret
	

verifica_repetido:
	#prologue
	pushl %ebp
	movl %esp, %ebp
	push %ebx
	
	movl ptrdest, %eax				#move o endereco do vetor de destino para eax
	movl $0, %ebx					#inicializa um contador para verificar quantos valores faltam iterar

loop1:
	cmpl %ebx, %edi					#condicao de paragem do loop, quando já não houver mais elementos a iterar salta fora
	je return_0						#salta para return 0 quando já não há mais elementos a iterar
	cmpl %edx, (%eax)				#compara se edx já existem no vetor de destino(o apontado por eax)
	je return_1						#se a comparacao anterior der igual então há repetido e salta para return_1
	addl $4, %eax					#incrementa o endereco em eax em 4 bytes para aceder ao proximo valor no vetor de destino
	incl %ebx						#incrementa o ebx de forma a indicar que mais um valor foi iterado
	jmp loop1						#recomeca o loop
	
return_0:
	movl $0, %eax					#move 0 para eax para retornar que edx não existe no vetor de destino
	popl %ebx						#restaura o conteudo em ebx
	#epilogue
	movl %ebp, %esp
	popl %ebp
	ret
	
return_1:
	movl $1, %eax					#move 1 para eax para retornar que edx já existe no vetor de destino
	popl %ebx						#restaura o conteudo em ebx
	#epilogue
	movl %ebp, %esp
	popl %ebp
	ret
	