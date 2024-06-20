.section .data
.global ptr1
.global ptr2

.section .text
.global str_copy_porto # int sum(void)

str_copy_porto:
# prologue
pushl %ebp # save previous stack frame pointer
movl %esp, %ebp # the stack frame pointer for sum function
pushl %ebx

movl ptr1,%eax
movl ptr2,%ecx

verificacao:
	movb (%eax),%bl   
	cmpb $0,%bl
	je end
	cmpb $'v', %bl
	je troca_v
	movb (%eax),%dl
	movb %dl,(%ecx)
	addl $1,%eax
	addl $1,%ecx
	jmp verificacao

troca_v:
	movb $'b',(%ecx)
	addl $1,%eax
	addl $1,%ecx
	jmp verificacao
	
end:
movb (%eax),%bl
movb %bl,(%ecx)
popl %ebx

# epilogue

movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
popl %ebp # restore the previous stack frame pointer

ret
