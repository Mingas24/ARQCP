.section .data

.global num

.section .text

.global check_num

check_num:
# prologue
pushl %ebp 				# save previous stack frame pointer
movl %esp, %ebp 		# the stack frame pointer for sum function

movl num, %eax			#copies the value of num to eax
movl $2,%ecx
cdq
cmp $0, %eax
jl	numNegativo
je	zero
jg numPositivo

zero:
movl $3, %eax
	jmp end

numNegativo :
	idiv %ecx
	cmp $0, %edx
	jne numNegativoImpar
	movl $1, %eax
	jmp end

	numNegativoImpar:
		movl $2, %eax
		jmp end
	
numPositivo:
	idiv %ecx
	cmp $0,%edx
	jne numPositivoImpar
	movl $3, %eax
	jmp end
	
	numPositivoImpar:
		movl $4, %eax


end:
# epilogue
movl %ebp, %esp 		# restore the previous stack pointer ("clear" the stack)
popl %ebp 				# restore the previous stack frame pointer
ret

