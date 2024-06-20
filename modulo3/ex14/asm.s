.section .data
	.global ptrvec
	.global num
	.global x
	
.section .text
	.global exists
	.global vec_diff

vec_diff:
	#prologue
	pushl %ebp
	movl %esp, %ebp
	push %ebx
	
	movl num, %ecx			#move o num de elementos do vetor para ecx
	movl $0, %ebx			#inicializa a 0 o contador de numeros duplicados
	movl ptrvec, %eax		#move o endereco do vetor para eax

start_loop1:
	cmpl $0, %ecx			#condição de paragem do loop, quando já não houver mais elementos a iterar salta fora
	je end_loop1			#salta para end_loop1 quando já não há mais elementos a iterar
	movw (%eax), %dx		#move o apontado por eax(short do vetor) para dx
	movw %dx, x				#move o short do vetor para x
	
	pushl %eax				#push ao conteudo em eax
	pushl %ecx				#push ao conteudo em ecx
	pushl %edx				#push ao conteudo em edx
	call exists				#chama a funcao que verifica se x se repete no vetor
	cmpl $1, %eax			#compara se o retorno da funcao deu 1(repete)
	popl %edx				#restaura o conteudo em edx
	popl %ecx				#restaura o conteudo em ecx
	popl %eax				#restaura o conteudo em eax
	je adiciona				#salta para adiciona quando a ultima comparacao da igual
	addl $2, %eax			#incrementa o endereco em eax em 2 para ir para a proxima posicao do vetor
	decl %ecx				#decrementa o numero de valores a iterar no vetor
	jmp start_loop1
	
adiciona:
	addl $1, %ebx			#adiciona 1 ao contador de numeros duplicados
	addl $2, %eax			#incrementa o endereco em eax em 2 para ir para a proxima posicao do vetor
	decl %ecx				#decrementa o numero de valores a iterar no vetor
	jmp start_loop1			#recomeca o loop
	
end_loop1:
	movl num, %ecx			#move o num para termos novamente o num de elementos no vetor
	subl %ebx, %ecx			#subtrai ebx a ecx(o numero de elementos repetidos ao numero de elementos do vetor)
	movl %ecx, %eax			#move o resultado da subtracao anterior para eax para retornar
	popl %ebx
	#epilogue
	movl %ebp, %esp
	popl %ebp
	ret
	
exists:
	#prologue
	pushl %ebp
	movl %esp, %ebp
	pushl %ebx
	
	movl ptrvec, %eax		#move o endereco do vetor para eax
	movl $0, %ebx			#move 0 para ebx para inicializar o contador das vezes que o elemento repete
	movl num, %ecx			#move o num de elementos do vetor para ecx
	
start_loop2:
	cmpl $0, %ecx			#condição de saida do loop, quando já não houver mais elementos a iterar salta fora
	je end_loop2			#salta para end_loop2 quando não tiver mais elementos a iterar
	movw x, %dx				#move x(valor do vetor que queremos verificar se se repete no vetor) para dx
	cmpw %dx, (%eax)		#compara o apontado por eax com dx para verificar se são iguais
	je incrementa			#salta para incrementa se a comparacao anterior der igual
	addl $2, %eax			#incrementa o endereco em eax em 2 para aceder ao proximo short
	decl %ecx				#decrementa o numero de elementos a iterar no vetor
	jmp start_loop2			#recomeca o loop
	
incrementa:
	incl %ebx				#incrementa o contador das vezes que o elemento repete
	addl $2, %eax			#incrementa o endereco em eax em 2 para aceder ao proximo short
	decl %ecx				#decrementa o numero de elementos a iterar no vetor
	jmp start_loop2			#recomeca o loop
	
end_loop2:
	cmpl $1, %ebx			#compara o contador das vezes que o elemento repete com 1
	jg return_int			#se a comparacao anterior der maior que 0 salta para retornar 1 para informar que o valor passado em x se repete no vetor
	movl $0, %eax			#move 0 para eax para retornar que o valor em x não se repete no vetor
	popl %ebx
	#epilogue
	movl %ebp, %esp
	popl %ebp
	ret
	
return_int:
	movl $1, %eax			#move 1 para eax para retornar que o valor em x se repete no vetor
	popl %ebx
	#epilogue
	movl %ebp, %esp
	popl %ebp
	ret
	