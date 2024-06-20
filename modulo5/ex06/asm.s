.section .data

.section .text
	.global locate_greater
	
locate_greater:
	pushl %ebp
	movl %esp, %ebp
	pushl %ebx
	pushl %edi
	
	movl 8(%ebp), %eax
	movl 12(%ebp), %ecx
	movl 14(%ebp), %edx
	movl $10, %ebx
	movl $0, %edi
	
start_loop:
	cmpl $0, %ebx
	je end_loop
	cmpl %ecx, 4(%eax)
	jg add_grade
	addl $4, %edx
	addl $4, %eax
	decl %ebx
	jmp start_loop
	
add_grade:
	movl 4(%eax), %edx
	incl %edi
	addl $4, %edx
	addl $4, %eax
	decl %ebx
	jmp start_loop
	
end_loop:
	movl %edi, %eax
	popl %edi
	popl %ebx
	movl %ebp, %esp
	popl %ebp
	ret
	