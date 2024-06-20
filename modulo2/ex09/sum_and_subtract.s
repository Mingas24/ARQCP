.section .data

	.global A
	.global B
	.global C
	.global D
	
.section .text
	
	.global sum_and_subtract
	sum_and_subtract:
	# prologue
	pushl %ebp 			# save previous stack frame pointer
	movl %esp, %ebp 	# the stack frame pointer for sum function
	pushl %ebx
	
	movl C, %eax		#move C to eax (32bits)
	movsbl A, %ebx		#move A to ebx (8bits-32bits)
	addl %ebx, %eax		#add ebx to eax. Result is in eax (32bits)
	
	movl D, %ebx		#move D to ebx. Result is in ebx (32bits)
	subl %ebx, %eax		#subtract ebx from eax. Result is in eax (32bits)
	
	movswl B, %ebx		#move B to ebx (16bits-32bits)
	addl %ebx, %eax		#add ebx to eax. Result is in eax (32bits)
	
	cdq
	
	# epilogue
	popl %ebx
	movl %ebp, %esp 	# restore the previous stack pointer ("clear" the stack)
	popl %ebp 			# restore the previous stack frame pointer
	ret
