.section .data

.section .text

.global sum_n
sum_n:

# prologue

pushl %ebp      # save previous stack frame pointer
movl %esp, %ebp  # the stack frame pointer

#body

	movl 8(%ebp),%ecx
	movl $0,%eax
	movl $1,%edx

somar:
	cmpl %ecx,%edx
	jg end_loop
	addl %edx,%eax
	incl %edx
	jmp somar

end_loop:

# epilogue

movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
popl %ebp     #  restore the previous stack frame pointer
ret 	#returns both eax and edx 
