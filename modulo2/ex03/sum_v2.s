.section .data
.global op1
.global op2
.equ CONST, 15

.section .text
.global sum_v2 # int sum_v2(void)
sum_v2:

# prologue
pushl %ebp # save previous stack frame pointer
movl %esp, %ebp # the stack frame pointer for sum function

movl $CONST, %eax #place CONST in eax
movl $CONST, %ecx #place CONST in ecx


subl op1, %eax  #sub CONST to eax
subl op2, %ecx #sub CONST to ecx
subl %ecx, %eax #sub ecx to eax

# epilogue
movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
popl %ebp # restore the previous stack frame pointer

ret
