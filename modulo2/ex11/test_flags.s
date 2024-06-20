.section .data

.global op1
.global op2

.section .text

.global test_flags # char test_flags(void)

test_flags:
# prologue
pushl %ebp 				# save previous stack frame pointer
movl %esp, %ebp 		# the stack frame pointer for sum function

movl op1, %eax           #copies the value of op1 to eax
movl op2, %ecx			 #copies the value of op2 to ecx
addl %ecx, %eax 		 #add ecx to eax. Result is in eax

jo output
jc output

movl $0, %eax			#flag não ativada retorna 0
jmp fim

output:			
movl $1, %eax			#flag ativada retona 1


fim:
# epilogue
movl %ebp, %esp 		# restore the previous stack pointer ("clear" the stack)
popl %ebp 				# restore the previous stack frame pointer
ret
