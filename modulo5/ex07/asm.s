.section .text
	.global fill_s1
	
fill_s1:
	# prologue 
	pushl %ebp 
	movl %esp, %ebp
	pushl %ebx
	pushl %esi
	
	movl 8(%ebp), %esi
	movl 12(%ebp), %eax
	movb 16(%ebp), %bl
	movl 20(%ebp), %ecx
	movb 24(%ebp), %bh
	
	movl %eax, (%esi)
	addl $4, %esi
	movb %bl, (%esi)
	addl $4, %esi
	movl %ecx, (%esi)
	addl $4, %esi
	movb %bh, (%esi)
	
end:
	popl %esi
	popl %ebx
	# epilogue
	movl %ebp, %esp
	popl %ebp
	ret
