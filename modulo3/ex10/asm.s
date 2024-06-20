.section .data
.global ptr1
.global ptr2
.global ptr3

.section .text
.global str_cat # void str_cat(void)

str_cat:

	# prologue
	pushl %ebp 				# save previous stack frame pointer
	movl %esp, %ebp 		# the stack frame pointer for sum function
     
	movl ptr1,%edx 			# moves ptr1 to edx
	movl ptr3,%eax 			# moves ptr3  to edx

percorrerString1:
	movb (%edx),%cl 		# moves a byte from ptr1 to cl
	movb %cl,(%eax) 		# moves a byte from cl to ptr3 
	cmpb $0,%cl     		# compares the value 0 to cl
	je end1
	incl %eax       		# increments the position
	incl %edx       		# increments the position
	loop percorrerString1

percorrerString2:
	movb (%edx),%cl 		# moves a byte from ptr1 to cl
	movb %cl,(%eax) 		# moves a byte from cl to ptr3 
	cmpb $0,%cl     		# compares the value of 0 to cl
	je end2
	incl %eax       		# increments the position
	incl %edx      			# increments the position
	loop percorrerString2
	
end1:
	movl ptr2,%edx 			# moves ptr2 to edx
	loop percorrerString2 			

	
end2:

	# epilogue
	movl %ebp, %esp 		# restore the previous stack pointer ("clear" the stack)
	popl %ebp 				# restore the previous stack frame pointer
	ret
