.section .data

.global ptr1


.section .text

.global zero_count #int zero_count(void)
zero_count:

# prologue

pushl %ebp      # save previous stack frame pointer
movl %esp, %ebp  # the stack frame pointer
pushl %ebx

#body

	movl $0,%ebx
	movl ptr1, %edx

loop_zero_count:

	movb (%edx), %cl
	cmpb $0, %cl
	je end_loop
	cmpb $48, %cl
	je incrementar
	incl %edx
	jmp loop_zero_count

incrementar:
	
	incl %ebx
	incl %edx
	jmp loop_zero_count

end_loop:

movl %ebx, %eax

# epilogue

popl %ebx
movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
popl %ebp     #  restore the previous stack frame pointer
ret 	#returns both eax and edx 
