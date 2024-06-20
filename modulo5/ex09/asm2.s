.section .text
	.global fun2
	
fun2:
	# prologue 
	pushl %ebp 
	movl %esp, %ebp
	pushl %ebx
	pushl %esi
	
	movl 8(%ebp), %ecx
	addl $28, %ecx
	movswl (%ecx), %eax
		
end:
	popl %esi
	popl %ebx
	# epilogue
	movl %ebp, %esp
	popl %ebp
	ret
