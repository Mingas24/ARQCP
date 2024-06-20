.section .data

.section .text
	.global update_address
	
update_address:
	pushl %ebp
	movl %esp, %ebp
	
	movl 8(%ebp), %eax
	movl 12(%ebp), %ecx
	
start_loop:
	movl (%ecx), %edx
	cmpl $0, %edx
	je end_loop
	movl %edx, 124(%eax)
	incl %ecx
	incl %eax
	jmp start_loop
	
end_loop:
	movl %ebp, %esp
	popl %ebp
	ret
	