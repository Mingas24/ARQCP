.section .text
	.global update_grades
	
update_grades:
	# prologue 
	pushl %ebp 
	movl %esp, %ebp
	pushl %ebx
	
	movl 8(%ebp), %eax
	movl 12(%ebp), %edx
	addl $4, %eax
	
	movl $0, %ecx
	
loop:
	cmpl $10, %ecx
	je end
	movl (%edx), %ebx
	movl %ebx, (%eax)
	addl $4, %eax
	addl $4, %edx
	incl %ecx
	jmp loop
	
end:
	popl %ebx
	# epilogue
	movl %ebp, %esp
	popl %ebp
	ret
