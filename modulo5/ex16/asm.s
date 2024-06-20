.section .data

.section .text
	.global approved_semester
	
approved_semester:
	pushl %ebp
	movl %esp, %ebp
	pushl %edi
	
	movl 8(%ebp), %ecx	
	movl (%ecx), %edx
	addl $4, %ecx
	movl (%ecx), %ecx
	movl $0, %edi
	
start_loop:
	cmpl $0, %edx
	je end_loop
	pushl %edx
	pushl %ecx
	call check_aprove
	cmpl $1, %eax
	je count
	popl %ecx
	popl %edx
	decl %edx
	incl %ecx
	jmp start_loop
	
count:
	popl %ecx
	popl %edx
	incl %edi
	decl %edx
	incl %ecx
	jmp start_loop
	
end_loop:
	movl %edi, %eax
	popl %edi
	movl %ebp, %esp
	popl %ebp
	ret
	
	
check_aprove:
	pushl %ebp
	movl %esp, %ebp
	pushl %ebx
	
	movl 8(%ebp), %eax
	movb (%eax), %cl
	movl $8, %edx
	movl $0, %ebx
	
start_loop2:
	cmpl $0, %edx
	je end_loop2
	shrb %cl
	jc increase
	decl %edx
	jmp start_loop2
	
increase:
	incl %ebx
	decl %edx
	jmp start_loop2
	
end_loop2:
	cmpl $5, %ebx
	jge return_1
	movl $0, %eax
	popl %ebx
	movl %ebp, %esp
	popl %ebp
	ret
	
return_1:
	movl $1, %eax
	popl %ebx
	movl %ebp, %esp
	popl %ebp
	ret
	