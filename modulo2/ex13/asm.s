.section .data

.global base
.global height

.section .text

.global getArea # int getArea(void)

getArea:
# prologue
pushl %ebp 				# save previous stack frame pointer
movl %esp, %ebp 		# the stack frame pointer for sum function

movl base, %ecx			#copies the value of base to ecx
movl height, %eax		#copies the value of height to eax	
mull %ecx				#multiplies ecx with eax. Result stays edx:eax

movl $2, %ecx			#copies the value 2 to ecx
divl %ecx				#division of edx:eax to 2. Result stays eax

end:
# epilogue
movl %ebp, %esp 		# restore the previous stack pointer ("clear" the stack)
popl %ebp 				# restore the previous stack frame pointer
ret
