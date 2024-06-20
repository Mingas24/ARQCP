.section .data

.global num
.global ptr1
.global ptr2
.section .text

.global swap 

swap:

	# prologue
	pushl %ebp 				# save previous stack frame pointer
	movl %esp, %ebp 		# the stack frame pointer for sum function
	
	pushl %ebx
	pushl %esi
	
	movl $0, %edx			#moves 0 to edx
	movl ptr1, %eax			#moves ptr1 to eax
	movl ptr2, %ecx		    #moves ptr2 to ecx
	movl $0, %esi			#moves 0 to esi
	
	runVec:
		cmpl num, %esi		#compares num to esi
		je end				#jumps to the end if num is equals to esi
		movb (%ecx), %bl	#moves one byte from ecx to bl
		movb (%eax), %dl	#moves one byte from eax to dl
		movb %dl, (%ecx)	#moves one byte from dl to ecx
		movb %bl, (%eax)	#moves one byte from bl to eax
		incl %ecx			#increments ecx
		incl %esi			#increments esi
		incl %eax			#increments %eax
		jmp runVec		 	#jumps to runVec
		
	
	end:
	
	popl %esi
	popl %ebx
	
	# epilogue
	movl %ebp, %esp 		# restore the previous stack pointer ("clear" the stack)
	popl %ebp 				# restore the previous stack frame pointer
	ret
