.section .data

.section .text
.global cube		#int cube(int x)

cube:
	
	# prologue
	pushl %ebp 				# save previous stack frame pointer
	movl %esp, %ebp 		# the stack frame pointer for sum function
	
	movl 8(%esp), %ecx
	movl %ecx, %eax
	imull %ecx
	imull %ecx
	
	# epilogue
	movl %ebp, %esp 		# restore the previous stack pointer ("clear" the stack)
	popl %ebp 				# restore the previous stack frame pointer
	ret
