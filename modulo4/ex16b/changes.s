.section .data

.section .text
	.global changes
	
changes:
#prologue
	pushl %ebp      	
	movl %esp, %ebp  	
	
	movl 8(%ebp), %ecx			# move o numero enviado por parametro para ecx
	movl (%ecx), %eax			# move o apontado pelo ecx para o eax
	testl $(0x00800000), %eax	# teste com a mascara se os mais significativos 4 bits do numero sao maiores que 7
	jle end						# se forem menores salta para o end
	XORl $(0x00f00000), %eax	# senao usa o XOR para inverter os bits
	movl %eax, (%ecx)			# move o valor eax para o apontado ecx
	
end:	
#epilogue
	movl %ebp, %esp  	
	popl %ebp     		
	ret
