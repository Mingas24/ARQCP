.section .data
.global s1
.global s2

.section .text
.global crossSumBytes 	# short crossSumBytes(void)

crossSumBytes:
# prologue
pushl %ebp 				# save previous stack frame pointer
movl %esp, %ebp 		# the stack frame pointer for sum function
pushl %ebx

movw s1, %ax			#place s1 in ax
movw s2, %bx			#place s2 in bx
addb %bh, %al			#add bh in al
addb %bl, %ah			#add bl in ah


# epilogue
popl %ebx
movl %ebp, %esp
popl %ebp 				# restore the previous stack frame pointer
ret
