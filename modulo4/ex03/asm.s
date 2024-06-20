.section .data

.section .text
.global greatest		#int greatest(int a, int b, int c)

greatest:
	
	# prologue
	pushl %ebp 				# save previous stack frame pointer
	movl %esp, %ebp 		# the stack frame pointer for sum function
	pushl %ebx
	
	movl 8(%ebp), %ebx		#Saves the paremeter a in ebx
	movl 12(%ebp), %ecx		#Saves the paremeter b in ecx
	movl 16(%ebp), %edx		#Saves the paremeter c in edx
	cmpl %ebx, %ecx
	jg b_bigger				#if b>a
	jl b_smaller			#if b<a
	
	
	
b_bigger:
	cmpl %ecx, %edx			#Compare b with c
	jg c_bigger				#if c>
	movl %ecx, %eax			#b is bigger so i move it to eax
	jmp end					#if b is bigger end it
	
b_smaller:
	cmpl %ebx,%edx			#Compare a with c
	jg c_bigger				#if c>
	movl %ebx,%eax			#a is bigger so i move it to eax
	jmp end					#if a is bigger end it
	
c_bigger:
	movl %edx,%eax			#c is bigger so i move it to eax
	jmp end					#if c is bigger end it

end:

	popl %ebx
	# epilogue
	movl %ebp, %esp 		# restore the previous stack pointer ("clear" the stack)
	popl %ebp 				# restore the previous stack frame pointer
	ret
