.section .data

.section .text
.global add_byte  				# void add_byte(char x, int *vec1, int *vec2)

add_byte:
	# prologue
	pushl %ebp 						# save previous stack frame pointer
	movl %esp, %ebp				 	# the stack frame pointer for sum function
	pushl %ebx
	pushl %esi
	
	movl $0, %ecx
	movb 8(%ebp), %cl				# parameter x to cl
	movl 12(%ebp), %eax				# parameter vec1 to eax
	movl 16(%ebp), %ebx				# parameter vec2 to ebx

	movl (%eax), %esi				# number of values (first of the vec1)
	movl %esi, (%ebx)				# first value is copied
	addl $4, %eax					# next value of vec1
	addl $4, %ebx					# next value of vec2
		
	loop:
		cmpl $0, %esi				# if number of values is 0 end it
		je end
		
		movl (%eax), %edx			# value of vec1 to edx 
		addb %cl, %dl				# adds x to dl
		movl %edx, (%ebx)			# previous sum to vec2
			
		addl $4, %eax				# next value of vec1
		addl $4, %ebx				# next value of vec2			
		decl %esi					# decreases number of values
		jmp loop
		
	end:
	
	# epilogue
	popl %esi
	popl %ebx
	movl %ebp, %esp 				# restore the previous stack pointer ("clear" the stack)
	popl %ebp 						# restore the previous stack frame pointer
ret
	
