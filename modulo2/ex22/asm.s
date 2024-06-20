.section .data
	.global i
	.global j
	temp:
		.int 0
	.global temp
	.section .text
	
	.global f
	.global f2
	.global f3
	.global f4
	
	f:
	# prologue
	pushl %ebp 				# save previous stack frame pointer
	movl %esp, %ebp 		# the stack frame pointer for sum function
	
	movl i, %eax			# places i in eax
	movl j, %ecx			# places j in ecx
	
	cmpl %eax, %ecx			# compares eax and ecx
	je jmp_equals
	
	subl $1, %ecx			# j--
	addl %ecx, %eax			# eax + ecx
	
	jmp end
	
	jmp_equals:
	subl %ecx, %eax		# ecx - eax
	addl $1, %eax		# i++
	jmp end
	
	end:
	# epilogue
	movl %ebp, %esp		 	# restore the previous stack pointer ("clear" the stack)
	popl %ebp 				# restore the previous stack frame pointer
ret

	f2:
	# prologue
	pushl %ebp 				# save previous stack frame pointer
	movl %esp, %ebp 		# the stack frame pointer for sum function
	
	movl i, %eax			# places i in eax
	movl j, %ecx			# places j in ecx
	
	cmpl %ecx, %eax			# compares ecx and eax
	jg jmp_bigger	
		
	addl $1, %ecx			# j++
	jmp end2
	
	jmp_bigger:
	subl $1, %eax
	jmp end2
	
	end2:
	imul %ecx				
	# epilogue
	movl %ebp, %esp 		# restore the previous stack pointer ("clear" the stack)
	popl %ebp				# restore the previous stack frame pointer
ret

	f3:
	# prologue
	pushl %ebp				# save previous stack frame pointer
	movl %esp, %ebp 		# the stack frame pointer for sum function
		
	movl i, %eax			# places i in eax
	movl j, %ecx			# places j in ecx
	
	cmpl %ecx, %eax			# compares ecx and eax
	jg jmp
	je jmp
	
	addl %ecx, %eax			# eax + ecx
	addl $2, %ecx			# j+2
	movl i , %edx			# places i in edx
	addl %edx, %ecx			# ecx + edx
	jmp end3
	
	jmp:
	imul %ecx
	movl i, %ecx			# places i in ecx
	addl $1, %ecx			# j++
	jmp end3
	
	end3:
	movl %eax, temp		
	movl %ecx, %eax
	movl temp, %ecx
	movl $0, %edx
	
	cmpl $0, %ecx
	je jmp_end3_zero
	
	idivl %ecx
	jmp end3_1
	
	jmp_end3_zero:
	movl $0, %eax
	jmp end3_1
	
	end3_1:
	
	movl %ebp, %esp 		# restore the previous stack pointer ("clear" the stack)
	popl %ebp 				# restore the previous stack frame pointer
ret

	f4:
	# prologue
	pushl %ebp 				# save previous stack frame pointer
	movl %esp, %ebp 		# the stack frame pointer for sum function
	
	movl i, %eax
	movl j, %ecx
	addl %ecx, %eax
	movl $10, %ecx
	cmpl %ecx, %eax
	jl jmp_smaller
		
	movl i, %eax
	movl j, %ecx
	imul %ecx
	cdq
	movl $3, %ecx
	idivl %ecx
	jmp end4
	
	jmp_smaller:
	movl i, %eax
	movl i, %ecx
	imul %ecx
	movl $4, %ecx
	imul %ecx
	jmp end4
	
	end4:
	movl %ebp, %esp 		# restore the previous stack pointer ("clear" the stack)
	popl %ebp 				# restore the previous stack frame pointer
ret

