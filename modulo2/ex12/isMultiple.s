.section .data

.global A
.global B

.section .text
.global isMultiple

isMultiple:
	# prologue
	pushl %ebp
	movl %esp, %ebp
	pushl %ebx
	
	movl $0, %edx  #Limpa o registo contido em %edx
	
	movl A, %eax   #Coloca o valor de A para eax
	movl B, %ecx   #Coloca o valor de B para ecx
	cmpl $0, %eax   #Verifica se o divisor que foi armazenado em eax é zero
	je jmp_dividir_por_0 #Se for igual dá jump para o jmp_divisor_zero
	divl %ecx,%eax  #Divide o valor de %eax por %ecx
	cmpl $0, %edx  	#Compara o valor de edx que é o resto da divisao com zero
	je jmp_multiplo
	jl jmp_nao_multiplo
	jg jmp_nao_multiplo

jmp_dividir_por_0:		#Caso o divisor seja 0 coloca o valor de 0 em eax
		movl $0, %eax
		jmp end
jmp_multiplo:           #Caso o resto que ficou em edx seja igual a 0, coloca o valor de 1 em eax
	movl $1, %eax
	jmp end
jmp_nao_multiplo: 		#Caso o resto que ficou em edx seja diferente de 0, coloca o valor de 0 em eax
	movl $0, %eax
	jmp end
	
end:
	# epilogue
	popl %ebx
	movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
	popl %ebp # restore the previous stack frame pointer
	ret
