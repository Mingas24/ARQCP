.section .data
	.global op1
	.global op2
	
.section .text

.global sum2ints
sum2ints:

# prologue

pushl %ebp # save previous stack frame pointer

movl %esp, %ebp # the stack frame pointer for sum function

pushl %ebx

movl op1,%eax
movl op2,%ecx
addl %ecx,%eax
adcl $0,%edx
cdq

# epilogue

popl %ebx

movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)

popl %ebp # restore the previous stack frame pointer

ret

