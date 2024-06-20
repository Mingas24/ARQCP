.section .data
.global ptr1

.section .text
.global  encrypt # int encrypt(void)

encrypt:
# prologue
pushl %ebp # save previous stack frame pointer
movl %esp, %ebp # the stack frame pointer for sum function

movl $0, %eax
movl ptr1, %edx			# copies the value of ptr1 to eax
movl $0, %ecx

loop:
	movb (%edx), %cl	# copies the content of edx to cl
	cmpb $0, %cl		# compares the content of cl to 0
	jz end				# jumps to end if equals to 0
	
	cmpb $'a', %cl		# compares cl to 'a'
	je if_equal
	cmpb $' ', %cl		# compares cl to ' '
	je if_equal
	
	addb $2, %cl		# adds the value 2 to cl
	movb %cl, (%edx)	# copies the value of cl to the content of edx
	incl %eax			# increments eax by one
	incl %edx			# increments edx by one
	
	jmp loop			# returns to the beginning of loop
	
if_equal:
	
	movb %cl, (%edx)	# copies the value of cl to the content of %edx
	incl %edx			# increments edx by one
	jmp loop
	
end:

# epilogue
movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
popl %ebp # restore the previous stack frame pointer

ret
