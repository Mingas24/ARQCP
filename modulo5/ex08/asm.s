.section .data

.section .text
	.global fill_s2
	
fill_s2:
	pushl %ebp
	movl %esp, %ebp
	
	movl 8(%ebp), %eax
	
	movl 12(%ebp), %ecx
	movw (%ecx), %dx
	movw %dx, (%eax)
	addl $2, %eax
	addl $2, %ecx
	movw (%ecx), %dx
	movw %dx, (%eax)
	addl $2, %eax
	addl $2, %ecx
	movw (%ecx), %dx
	movw %dx, (%eax)
	
	addl $4, %eax
	movl 16(%ebp), %ecx
	movl %ecx, (%eax)
	
	addl $4, %eax
	movl 20(%ebp), %ecx
	movb (%ecx), %dl
	movb %dl, (%eax)
	incl %eax
	incl %ecx
	movb (%ecx), %dl
	movb %dl, (%eax)
	incl %eax
	incl %ecx
	movb (%ecx), %dl
	movb %dl, (%eax)
	
	movl %ebp, %esp
	popl %ebp
	ret
	
	
	