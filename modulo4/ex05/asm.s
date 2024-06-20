.section .data

.section .text
.global inc_and_square		#int inc_and_square(int *v1, int v2)

inc_and_square:
	
	# prologue
	pushl %ebp 				# save previous stack frame pointer
	movl %esp, %ebp 		# the stack frame pointer for sum function
	pushl %esi
	
	movl 8(%ebp), %esi		# saves &v1 to esi
	movl 12(%ebp), %eax		# saves v2 to eax
	incl (%esi)				# increments by 1 the value pointed by esi
	imull %eax				# eax square
	 
	popl %esi
	# epilogue
	movl %ebp, %esp 		# restore the previous stack pointer ("clear" the stack)
	popl %ebp 				# restore the previous stack frame pointer
	ret
