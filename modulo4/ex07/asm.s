.section .data

.section .text
.global count_even		#int count_even(short *vec, int n)

count_even:
	
	# prologue
	pushl %ebp 				# save previous stack frame pointer
	movl %esp, %ebp 		# the stack frame pointer for sum function
	pushl %ebx
	
	movl $0, %eax
	movl 8(%ebp), %ebx		# saves vec to ecx
	movl 12(%ebp), %ecx  	# saves n to edx
	
	loop:
		cmpl $0, %ecx
		je end
		movw (%ebx), %dx
		andw $00000001, %dx
		cmpw $0, %dx
		jne count
		incl %eax
	count:
		decl %ecx
		addl $2, %ebx
		jmp loop
	end:
	
	# epilogue
	popl %ebx
	movl %ebp, %esp 		# restore the previous stack pointer ("clear" the stack)
	popl %ebp 				# restore the previous stack frame pointer
	ret
