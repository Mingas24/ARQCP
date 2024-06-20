.section .data

.global A
.global B
.global C
.global D

.section .text

.global compute # int compute(void)

compute:
# prologue
pushl %ebp 				# save previous stack frame pointer
movl %esp, %ebp 		# the stack frame pointer for sum function

movl $0, %edx			#copies the value 0 to edx
movl A, %ecx			#copies the value of A to ecx
movl B, %eax			#copies the value of B to eax	
imull %ecx				#multiplies ecx with eax. Result stays edx:eax

movl C, %ecx			#copies the value of C to ecx
addl %ecx, %eax			#adds the value of ecx to eax. Result stays eax
	
movl D, %ecx			#copies the value of D to ecx
cmp $0, %ecx			#compares 0 to ecx
je div					#jump if equal
idivl %ecx				#division of edx:eax to ecx. Result stays eax

div:					#in case of division by 0
mov $0, %ecx

end:
# epilogue
movl %ebp, %esp 		# restore the previous stack pointer ("clear" the stack)
popl %ebp 				# restore the previous stack frame pointer
ret
