.section .text
	.global fun1
	
fun1:
	# prologue 
	pushl %ebp 
	movl %esp, %ebp
	
	movl 8(%ebp), %ecx
	movswl (%ecx), %eax
	
end:
	# epilogue
	movl %ebp, %esp
	popl %ebp
	ret
