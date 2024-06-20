.section .text
	.global count_odd_matrix
	
count_odd_matrix:

	# prologue 
	pushl %ebp 
	movl %esp, %ebp
	subl $8, %esp
	pushl %edi
	pushl %esi
	pushl %ebx
	
	movl 8(%ebp), %ecx
	movl (%ecx), %esi
	movl 12(%ebp), %eax
	movl 16(%ebp), %edx
	movl $0, -8(%ebp)
	
	mull %edx
	
	movl %eax, -4(%ebp)
	movl $0, %edi
	
loop:
	cmpl $0, -4(%ebp)
	je end
	movb (%esi), %cl
	cmpb $0, %cl
	jle menor
	rolb $7, %cl
	shlb $1, %cl
	jc odd
	addl $4, %esi
	decl -4(%ebp)
	jmp loop
	
menor:
	addl $4, %esi
	decl -4(%ebp)
	jmp loop
	
	
odd:
	incl -8(%ebp)
	addl $4, %esi
	decl -4(%ebp)
	jmp loop
	
end:
	movl -8(%ebp), %eax
	popl %ebx
	popl %esi
	popl %edi
	# epilogue
	movl %ebp, %esp
	popl %ebp
	ret
	
