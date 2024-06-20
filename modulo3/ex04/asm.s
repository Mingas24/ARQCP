.section .data
.global ptrvec
.global num

.section .text
.global vec_add_one # int sum(void)

vec_add_one:

# prologue
pushl %ebp # save previous stack frame pointer
movl %esp, %ebp # the stack frame pointer for sum function


movl ptrvec, %edx			#move o endereco em ptr1 para eax
movl num, %ecx				#move o num de elementos do vetor para ecx
	
start_loop:
	cmpl $0, %ecx			#compares ecx to 0
	je end_loop				#if ecx equals to 0 jumps to end
	incl (%edx)				#increments 1 to the content of eax
	addl $4, %edx			#iincrements 4 to eax
	loop start_loop	
	
end_loop:

# epilogue
movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
popl %ebp # restore the previous stack frame pointer

ret
