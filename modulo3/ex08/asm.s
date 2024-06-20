.section .data
.global num
.global ptrvec
.global even

.section .text
.global test_even 			# int test_even(void)
.global vec_sum_even 		# int vec_sum_even(void)


test_even:

	# prologue
	pushl %ebp 				# save previous stack frame pointer
	movl %esp, %ebp 		# the stack frame pointer for sum function

	pushl %ebx				
	movl $0, %edx			# moves the value 0 to edx
	
	movl $2, %ebx			# moves the value 2 to ebx
	addl even, %eax			# adds the value of even to eax
	div %ebx				# divides eax by 2
	cmpl $0, %edx			# compares the remainder with 0
	je end2					
	movl $0, %eax			# moves the value of 0 to eax
	jmp end 
	
	end2:
	movl $1, %eax			# moves the value of 1 to eax
	
	end:
	
	
	popl %ebx
	
	# epilogue
	movl %ebp, %esp 		# restore the previous stack pointer ("clear" the stack)
	popl %ebp 				# restore the previous stack frame pointer
	ret

vec_sum_even:
	
	# prologue
	pushl %ebp 				# save previous stack frame pointer
	movl %esp, %ebp 		# the stack frame pointer for sum function
	
	movl $0, %eax			# moves the value 0 to eax
	movl $0, %edx			# moves the value 0 to edx
	movl ptrvec, %ecx		# moves ptrvec to ecx
	pushl %esi				
	
		somaValoresPares:
		cmpl num, %edx		# compares edx to num
		je end1				# jumps to the end if num is equals to edx
		movl (%ecx), %esi 	# moves the pointed content of ecx to esi
		movl %esi, even		# moves the content of esi to even
		pushl %edx			
		pushl %eax
		call test_even		# calls function test_even
		cmpl $1, %eax		# compares eax to 1
		popl %eax
		popl %edx
		je end3
		addl $4, %ecx		# increments the position pointed by ecx
		incl %edx			# increments edx
		jmp somaValoresPares
		
		jmp end1
		
		
		end3:
		addl (%ecx), %eax	# adds the pointed content of ecx to eax
		addl $4, %ecx		# increments the position pointed by ecx
		incl %edx			# increments the position poitend by edx
		jmp somaValoresPares
		
		end1:
	
	popl %esi
	

# epilogue
movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
popl %ebp # restore the previous stack frame pointer

ret
