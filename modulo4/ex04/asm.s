.section .data

.section .text

.global sum_smaller
sum_smaller:

# prologue

pushl %ebp      # save previous stack frame pointer
movl %esp, %ebp  # the stack frame pointer
pushl %ebx

#body

	movl 8(%ebp),%ecx
	movl 12(%ebp),%ebx
	movl 16(%ebp),%edx

somar_1:

	cmpl %ecx,%ebx
	jl somar_2
	movl $0,(%edx)
	movl %ecx,(%edx)
	addl %ecx,%ebx
	movl %ebx, %eax
	jmp end

somar_2:

	movl $0,(%edx)
	movl %ebx,(%edx)
	addl %ecx,%ebx
	movl %ebx, %eax

end:

# epilogue

popl %ebx
movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
popl %ebp     #  restore the previous stack frame pointer
ret 	#returns both eax and edx 
