.section .data

.section .text
.global greater_date  				# unsigned int greater_date(unsigned int date1, unsigned int date2)

greater_date:
	# prologue
	pushl %ebp 						# save previous stack frame pointer
	movl %esp, %ebp				 	# the stack frame pointer for sum function
	pushl %ebx
	
	movl 8(%ebp), %eax				# parameter date1
	movl 12(%ebp), %ebx				# parameter date2
		
	#Mask year
	movl $0x00ffff00, %ecx
	andl %ecx, %eax					# mask year and date1
	andl %ecx, %ebx					# mask year and date2
	cmpl %ebx, %eax					# compares dates
	
	jg ret_1						# jump if greater
	jl ret_2						# jump if less
		
	movl 8(%ebp), %eax				# parameter date1
	movl 12(%ebp), %ebx				# parameter date2
		
	#Mask month
	movl $0xff000000, %ecx
	andl %ecx, %eax					# mask month and date1
	andl %ecx, %ebx					# mask month and date2
	cmpl %ebx, %eax					# compares dates
		
	jg ret_1						# jump if greater
	jl ret_2						# jump if less
		
	movl 8(%ebp), %eax				# parameter date1
	movl 12(%ebp), %ebx				# parameter date2
	
	#Mask day
	movl $0x000000ff, %ecx
	andl %ecx, %eax					# mask day and date1
	andl %ecx, %ebx					# mask day and date2
	cmpl %ebx, %eax					# compares dates
		
	jg ret_1						# jump if greater

	ret_2:							# date2 is bigger or equal
		movl 12(%ebp), %eax
		jmp end
		
	ret_1:							# date1 is bigger
		movl 8(%ebp), %eax
			
	end:
	
	# epilogue
	popl %ebx
	movl %ebp, %esp 				# restore the previous stack pointer ("clear" the stack)
	popl %ebp 						# restore the previous stack frame pointer
ret
	
