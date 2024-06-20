.section .data

.global op1
.global op2

	op3 :
	.int 6000
	.global op3

	op4 :	
	.int 4000
	.global op4
	
.section .text

.global sum_v3 # int sum_v3(void)
sum_v3:

# prologue

pushl %ebp # save previous stack frame pointer

movl %esp, %ebp # the stack frame pointer for sum function

pushl %ebx


movl op1, %eax #place op1 in ecx

movl op2, %ecx #place op2 in eax

movl op3, %ebx #place op3 in ebx

movl op4, %edx #place op4 in edx

addl %edx, %ebx #add ebx to eax. Result is in eax

subl %ecx, %ebx #subtracte edx to eax. Result is in eax

addl %ebx, %eax #add ecx to eax. Result is in eax



# epilogue

popl %ebx

movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)

popl %ebp # restore the previous stack frame pointer

ret
