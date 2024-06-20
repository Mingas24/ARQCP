.section .data
.global ptrvec
.global num

.section .text
.global vec_zero # void vec_zero(void)

vec_zero:

	# prologue
	pushl %ebp 				# save previous stack frame pointer
	movl %esp, %ebp 		# the stack frame pointer for sum function     

	movl $0, %eax				#moves 0 to eax
	movl ptrvec, %ecx			#moves ptrvec to ecx
	movl $0, %edx				#moves 0 to edx
	
	runVec:
		cmpl num, %edx			#compares num to edx
		je end					#jumps to the end1 if num is equals to edx
		cmpw $100, (%ecx)		#compares content of ecx to 100
		jge replace				#jumps to the increments if ecx is greater or equal than 100
		addw $2, %cx			#increments the position pointed by ecx
		incl %edx				#increments edx
		jmp runVec
	
	jmp end
	
	replace:
		movw $0, (%ecx)			#moves 0 to the pointer of ecx
		addw $2, %cx			#increments the position pointed by ecx
		incl %edx				#increments edx
		incl %eax
		jmp runVec
		
	end:

	# epilogue
	movl %ebp, %esp 		# restore the previous stack pointer ("clear" the stack)
	popl %ebp 				# restore the previous stack frame pointer
	ret
