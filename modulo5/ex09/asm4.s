.section .text
	.global fun4
	
fun4:
	# prologue 
	pushl %ebp 
	movl %esp, %ebp
	pushl %ebx
	pushl %esi
	
	movl 8(%ebp), %ecx
	addl $8, %ecx
	movl (%ecx), %edx
	movswl (%edx), %eax

end:
	popl %esi
	popl %ebx
	# epilogue
	movl %ebp, %esp
	popl %ebp
	ret
