.section .data

.section .text

.global calc
calc:

# prologue

pushl %ebp      # save previous stack frame pointer
movl %esp, %ebp  # the stack frame pointer
pushl %ebx

#body
	
	movl 8(%ebp),%ebx
	movl 12(%ebp),%ecx
	movl 16(%ebp),%edx
	
	subl %ebx,(%ecx)
	imull (%ecx),%edx
	subl $2,%edx
	movl %edx, %eax
	
end:

# epilogue

popl %ebx
movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
popl %ebp     #  restore the previous stack frame pointer
ret 	#returns both eax and edx 
