.section .data

.section .text
	.global count_bits_zero
	
count_bits_zero:
#prologue
	pushl %ebp
	movl %esp, %ebp
	
	movl $0, %eax			#limpa o registo eax
	movl $0, %ecx			#limpa o registo ecx
	movl 8(%ebp), %edx		#põe o 1º param em edx
	
contar:
	cmp $32, %ecx			#compara edx com 32 (se for igual então chegou ao fim)
	je end					#salata para o fim
	sarl %edx				#shift para a direita
	jc avanca				#se houver carry salta
	incl %eax				#incrementa o valor de eax
	incl %ecx				#incrementa o contador de bits (edx)
	jmp contar				# volta ao inicio
	
avanca:
	incl %ecx				#se salta, então o bit era 1, logo só incrementa ao contado de bits
	jmp contar				#salta novamente para o loop
	
end:
#epilogue
	movl %ebp, %esp
	popl %ebp
	ret
	
