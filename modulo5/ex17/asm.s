.section .text
	.global return_unionB_b
	
return_unionB_b:
	# prologue 
	pushl %ebp 
	movl %esp, %ebp
	pushl %ebx
	
	movl 8(%ebp), %ebx
	movl 12(%ebp), %ecx
	movl 16(%ebp), %eax
	imull %ecx
	addl %ecx, %ebx
	addl $20, %ebx
	movsbl (%ebx), %eax
	
	
end:
	popl %ebx
	# epilogue
	movl %ebp, %esp
	popl %ebp
	ret
