.section .data

.section .text
.global activate_bits  				#int activate_bits(int a, int left, int right)
.global activate_invert_bits		#int activate_invert_bits(int a, int left, int right)
	
activate_invert_bits:
	# prologue
	pushl %ebp 						# save previous stack frame pointer
	movl %esp, %ebp 				# the stack frame pointer for sum function
	pushl %ebx
		
	movl 16(%ebp), %eax
	pushl %eax
	movl 12(%ebp), %eax
	pushl %eax
	movl 8(%ebp), %eax
	pushl %eax		
	#Pushl of the variables used in activate_bits

	call activate_bits	
	addl $12, %esp
	movl $0xffffffff, %ebx	
	xorl %ebx, %eax
			
	# epilogue
	popl %ebx
	movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
	popl %ebp # restore the previous stack frame pointer
ret
		
		
activate_bits:
	# prologue
	pushl %ebp 						# save previous stack frame pointer
	movl %esp, %ebp				 	# the stack frame pointer for sum function
	pushl %ebx
			
	movl $0, %ebx					#initiates mask at 0
	movl $0, %edx 					#initiates mask at 0			
	movl 12(%ebp), %ecx				#parameter left to ecx
	cmpl $31, %ecx					
	jge left_invalid
		incl %ecx					
		movl $0xffffffff, %ebx		#mask_left	
		shll %cl, %ebx				 			
	left_invalid:	
		movl 16(%ebp), %eax			#parameter right to eax
		cmpl $0, %eax
		jle right_invalid
		movl $32, %ecx
		subl %eax, %ecx				#subtracts 32 to the right		
		movl $0xffffffff, %edx		#mask_left			
		shrl %cl, %edx	
	right_invalid:	
		orl %ebx, %edx
		movl 8(%ebp), %eax
		orl %edx, %eax
				
	# epilogue
	popl %ebx
	movl %ebp, %esp 			# restore the previous stack pointer ("clear" the stack)
	popl %ebp 					# restore the previous stack frame pointer
ret
	
