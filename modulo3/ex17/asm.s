.section .data
	.global ptrvec
	.global num
	
.section .text
	.global array_sort
	
array_sort:

	#prologue
	pushl %ebp
	movl %esp, %ebp
	pushl %ebx						#push ao conteudo em ebx
	pushl %edi						#push ao conteudo em edi
	pushl %esi						#push ao conteudo em esi
	
	movl ptrvec, %eax				#move o endereco do vetor desordenado para eax
	movl $0, %ecx					#move 0 para ecx
	movl num, %ebx					#move num para ebx
	
loop:
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
	jg troca						#se edi for maior que esi então faz-se a troca
	incl %edx						#incrementamos uma posicao no vetor para comparar com o valor fixo em ecx
	jmp loop2						#recomeca o loop
	
troca:
	movl %edi, (%eax, %ecx, 4)		#move edi para a posicao de esi
	movl %esi, (%eax, %edx, 4)		#move esi para a posicao de edi
	incl %edx						#incrementamos uma posicao no vetor para comparar com o valor fixo em ecx
	jmp loop2						#recomeca o loop

end_loop2:		
	incl %ecx						#incrementa o vetor em uma posicao para se obter uma nova posicao fixa a comparar
	jmp loop						#recomeca o loop
	
end_loop:
	popl %esi						#restaura o conteudo em esi
	popl %edi						#restaura o conteudo em edi
	popl %ebx						#restaura o conteudo em ebx
	#epilogue
	movl %ebp, %esp
	popl %ebp
	ret
	
	