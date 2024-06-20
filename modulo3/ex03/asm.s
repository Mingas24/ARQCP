.section .data

.global ptr1
.global ptr2


.section .text

.global str_copy_porto2 #void str_copy_porto2(void)
str_copy_porto2:

# prologue

pushl %ebp      # save previous stack frame pointer
movl %esp, %ebp  # the stack frame pointer
pushl %ebx

#body

movl ptr1,%eax
movl ptr2,%ecx

verificacao:
	movb (%eax),%bl #move o apontado para bl
	cmpb $0,%bl #verifica se é o fim da string
	je end 
	cmpb $'v', %bl #verifica se o caracter é 'v'
	je troca_v
	cmpb $'V', %bl  #verifica se o caracter é 'V'
	je troca_V
	movb (%eax),%dl # move o caracter de eax para uma variavel provisórioa (dl)
	movb %dl,(%ecx) #move o caracter de dl para uma variavel ecx 
	addl $1,%eax # move uma posição ao array 
	addl $1,%ecx # move uma posição ao array 
	jmp verificacao # volta ao inicio

troca_v:
	movb $'b',(%ecx) #move a variavel 'b' para ecx
	addl $1,%eax # move uma posição ao array 
	addl $1,%ecx # move uma posição ao array 
	jmp verificacao # volta a verificacao

troca_V:
	movb $'B',(%ecx) #move a variavel 'B' para ecx
	addl $1,%eax # move uma posição ao array
	addl $1,%ecx # move uma posição ao array
	jmp verificacao # volta a verificacao

end:
movb %bl,(%ecx)

# epilogue

popl %ebx
movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
popl %ebp     #  restore the previous stack frame pointer
ret 	#returns both eax and edx 
