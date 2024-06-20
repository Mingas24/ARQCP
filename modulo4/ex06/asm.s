.section .data

.section .text

.global test_equal
test_equal:

# prologue

pushl %ebp      # save previous stack frame pointer
movl %esp, %ebp  # the stack frame pointer
pushl %ebx

#body
	
	movl 8(%ebp),%ecx
	movl 12(%ebp),%edx
	
	loop:
	movb (%ecx),%bl
	movb (%edx),%bh
	cmpw $0, %bx
	je end
	cmpb %cl,%dl
	jne diferente
	incl %ecx
	incl %edx
	jmp loop

diferente:
	movl $0, %eax
	jmp end_1

end:
	movl $1, %eax
	
end_1:

# epilogue

popl %ebx
movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
popl %ebp     #  restore the previous stack frame pointer
ret 	#returns both eax and edx 
