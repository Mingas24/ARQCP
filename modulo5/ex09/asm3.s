.section .text
	.global fun3
	
fun3:
	# prologue 
	pushl %ebp 
	movl %esp, %ebp
	pushl %ebx
	pushl %esi
	
	movl 8(%ebp), %ecx
	addl $28, %ecx
	movl %ecx, %eax
	
end:
	popl %esi
	popl %ebx
	# epilogue
	movl %ebp, %esp
	popl %ebp
	ret
