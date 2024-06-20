.section .data
	.global ptr1

.section .text
	.global decrypt
	.global encrypt
	
decrypt:
	#prologue
	pushl %ebp
	movl %esp, %ebp


	movl $0, %edx			#move 0 para ecx para iniciar o contador
	movl ptr1, %ecx			#move ptr1 para edx
	
	
loop:
	cmpb $0, (%ecx)			#compara 0 com edx
	je end					#salta para o fim do loop quando não houver mais elementos a iterar, uma vez que 0 marca o fim de array de char(string)
	cmpb $'a', (%ecx)		#verifica se o carater da string é um 'a'
	je incrementar			#se os carateres forem iguais salta para a funçao "incrementar"
	
verifica:
	cmpb $' ', (%ecx)		#verifica se o carater da string é um espaço
	je incrementar			#se os carateres forem iguais salta para a funçao "incrementar"
	
desincripta:
	incl %edx				#incrementa um ao contador
	subb $2, (%ecx)			#subtrai dois ao codigo asci do carater da string para obter o 2º carater inferior ao mesmo, por exemplo, converte um "C" num "A" ou um "J" num "H"
	addl $1, %ecx			#adiciona um ao endereco do vetor para ir para a proxima posição no vetor
	jmp loop				#recomeça o loop
	
incrementar:
	addl $1, %ecx			#avança uma posição no array
	jmp loop				#recomeça o loop
	
end:
	movl %edx, %eax			#move a quantidade de vezes que alterou uma letra no vetor para eax para ser retornado
	#epilogue
	movl %ebp, %esp
	popl %ebp
	ret
	
	
encrypt:
	#prologue
	pushl %ebp
	movl %esp, %ebp
	
	movl ptr1, %eax			#move o endereco da string para eax
	movl $0, %ecx			#move 0 para ecx para iniciar o contador
	
start_loop:
	cmpb $0, (%eax)			#condição de paragem do loop, quando já não houver mais elementos a iterar salta fora
	je end_loop				#salta para o fim do loop quando não houver mais elementos a iterar
	cmpb $'a', (%eax)		#verifica se o carater da string é um 'a'
	je incrementa			#se a comparação anterior se verificar salta para o "incrementa"
	
verifica_espaco:
	cmpb $' ', (%eax)		#verifica se o carater da string é um espaco
	je incrementa			#se a comparação anterior se verificar salta para a funçao "incrementa"
	
adicionaIncrementa:
	incl %ecx
	addb $2, (%eax)			#soma dois ao codigo asci do carater da string para obter o 2º carater inferior ao mesmo, por exemplo, converte um "A" num "C" ou um "H" num "J"
	addl $1, %eax			#adiciona um ao vetor para ir para a proxima posição no vetor
	jmp start_loop			#recomeça o loop
	
incrementa:
	addl $1, %eax			#adiciona um ao endereco do vetor para ir para a proxima posição no vetor
	jmp start_loop			#recomeça o loop
	
end_loop:
	movl %ecx, %eax
	#epilogue
	movl %ebp, %esp
	popl %ebp
	ret
	
	

	
