.section .data

.section .text
.global sum_multiples_x				#int sum_multiples_x(char *vec, int x)
	
sum_multiples_x:
	# prologue
	pushl %ebp 						# save previous stack frame pointer
	movl %esp, %ebp 				# the stack frame pointer for sum function
	pushl %ebx
	
	movl 8(%ebp), %ebx  			# parameter *vec
	movl 12(%ebp), %ecx				# parameter x
	movl $0, %edx
	
	shr $8, %ecx					# shifts the 2nd byte to the first
	and $255, %ecx					# 2nd byte to ecx
	
	loop:
		cmpb $0, (%ebx)				# checks if it is empty
		je end
		movl $0, %eax				# puts eax to 0
		movb (%ebx), %al			# char to al
		idivb %cl					# al div cl
		cmpb $0, %ah				# see if there is rest
		je add						# if there isn't rest it is multiple
		
		incl %ebx					# increment ebx
		jmp loop
		
		add:
			addb (%ebx), %dl		# add to sum
			incl %ebx				# increment ebx
			jmp loop
			
	end:
	movl %edx, %eax					# pass the sum to eax
	
	#epilogue
	popl %ebx
	movl %ebp, %esp 				# restore the previous stack pointer ("clear" the stack)
	popl %ebp 						# restore the previous stack frame pointer
ret

