.section .data
.global s

.section .text
.global swapBytes 		# short swapBytes(void)

swapBytes:
# prologue
pushl %ebp 				# save previous stack frame pointer
movl %esp, %ebp 		# the stack frame pointer for sum function
pushl %ebx

movw s, %ax				#place s in ax
movb %ah, %bl			#place ah to bl
movb %al, %bh			#place al to bh
movw %bx, %ax			#place bx to ax

# epilogue
popl %ebx
movl %ebp, %esp			# restore the previous stack pointer ("clear" the stack)
popl %ebp 				# restore the previous stack frame pointer
ret
