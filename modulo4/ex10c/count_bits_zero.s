.section .data

.section .text
	.global count_bits_zero
	.global vec_count_bits_zero
	
count_bits_zero:
#prologue
	pushl %ebp
	movl %esp, %ebp
	
	movl $0, %eax			#limpa o registo eax
	movl $0, %ecx			#limpa o registo ecx
	movl 8(%ebp), %edx		#põe o 1º param em edx
	
contar:
	cmp $32, %ecx			#compara edx com 32 (se for igual então chegou ao fim)
	je end					#salta para o fim
	sarl %edx				#shift para a direita
	jc avanca				#se houver carry salta
	incl %eax				#incrementa o valor de eax
	incl %ecx				#incrementa o contador de bits (edx)
	jmp contar				# volta ao inicio
	
avanca:
	incl %ecx				#se salta, então o bit era 1, logo só incrementa ao contador de bits
	jmp contar				#salta novamente para o loop
	
end:
#epilogue
	movl %ebp, %esp
	popl %ebp
	ret
	
vec_count_bits_zero:
#prologue
	pushl %ebp
	movl %esp, %ebp
	pushl %ebx
	
	movl 8(%ebp), %ecx			#move o 1ºparam para ecx
	movl $0, %ebx				#limpa o registo ebx
	movl $0, %edx				#limpa o registo edx
	
contar2:
	cmpl %edx, 12(%ebp)			#compara o contador (edx) com o 2ºparam
	je end2						#se forem iguais salta para o fim
	pushl %edx					#guarda o valor na stack
	pushl %ecx					#guarda o valor na stack
	pushl (%ecx)				#guarda o valor na stack
	call count_bits_zero		#chama a função
	popl %ecx					#recupera o valor da stack
	popl %ecx					#recupera o valor da stack
	popl %edx					#recupera o valor da stack
	addl %eax, %ebx				#adiciona o valor retornado da função chamada a ebx
	addl $4, %ecx				#adiciona 4 ao apontador para passar ao prox inteiro
	incl %edx					#incrementa o contador para no incio do loop comparar com o fim do vetor
	jmp contar2					#salta para o incio do loop

end2:
	movl %ebx, %eax				#no fim move o valor final de ebx para eax para ser retornado o numero total de bits a zero

#epilogue
	movl %ebp, %esp
	popl %ebp
	ret
