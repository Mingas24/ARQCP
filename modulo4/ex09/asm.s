.section .data

.section .text
.global calculate		#int calculate(int a, int b)

calculate:
	
	# prologue
	pushl %ebp 				# save previous stack frame pointer
	movl %esp, %ebp 		# the stack frame pointer for sum function
	pushl %ebx
			
	movl $0, %edx			# puts 0 to edx
	movl 8(%ebp), %eax		# saves parameter a into eax		
	movl 12(%ebp), %ebx		# saves parameter b into ebx			
	addl %ebx, %eax			# adds ebx and eax
	movl %eax, %edx			# moves the sum		
	movl 8(%ebp), %eax		# moves a to eax 
			
	#1st print_result
	pushl %edx				# pushes result
	pushl %ebx				# pushes b	
	pushl %eax				# pushes a		
	pushl $'+'				# pushes operator
	call print_result
		
	popl %eax 				# cleans operator
	popl %ecx				# saves value of a
	popl %ebx				# saves value of b
		
	movl %ecx, %eax			# a stays in both registries
	imull %ebx				# product
		
	pushl %eax				# pushes result
	pushl %ebx				# pushes b	
	pushl %ecx				# pushes a		
	pushl $'*'				# pushes operator
	call print_result		

	popl %eax 				#cleans operator
	popl %eax				#cleans a
	popl %eax				#cleans b
	popl %ebx		 		#product result
	popl %eax				#sum result
		
	subl %ebx, %eax			
	
	# epilogue
	popl %ebx
	movl %ebp, %esp 		# restore the previous stack pointer ("clear" the stack)
	popl %ebp 				# restore the previous stack frame pointer
	ret
