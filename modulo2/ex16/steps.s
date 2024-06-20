.section .data

.global num

.section .text

.global steps # int steps(int num)

steps:
# prologue
pushl %ebp 				# save previous stack frame pointer
movl %esp, %ebp 		# the stack frame pointer for sum function

pushl %ebx

movl $0, %edx			#copies the value 0 to edx
movl num, %eax			#copies the value of num to eax
movl $3, %ebx			#copies the value 3 to ebx
imull %ebx				#multiplies eax with ebx. 

addl $6, %eax			#adds the value 6 to eax
cdq

movl $3, %ecx			#copies the value 3 to ecx
idivl %ecx				#division of edx:eax to ecx. Result stays eax

addl $12, %eax			#adds the value 12 to eax

subl num, %eax			#subtracts num from eax
subl $1, %eax			#subtracts 1 from eax

end:

popl %ebx

# epilogue
movl %ebp, %esp 		# restore the previous stack pointer ("clear" the stack)
popl %ebp 				# restore the previous stack frame pointer
ret


