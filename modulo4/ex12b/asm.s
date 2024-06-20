.section .text
    .global activate_bit    # int activate_bit(int* ptr, int pos) 
   
activate_bit:
# prologue
    pushl %ebp 
    movl %esp, %ebp 
    subl $4, %esp   
    pushl %ebx
    
    movl 8(%ebp), %eax 		#save 1st param *ptr
	movl 12(%ebp), %ecx 	#save 2nd param pos
	
	movl (%eax), %ebx		
	movl %ebx, -4(%ebp)		#guarda o valor de x na var local
	
	movl $1, %ebx			

	shll %cl, %ebx			#mascara para ativar determinado bit
	
	movl (%eax), %edx		#guarda valor de x em %edx
	orl %ebx, %edx			#aplica a mascara 
	movl %edx, (%eax)		#guarda depois da aplicação
	
	cmpl -4(%ebp), %edx		#compara antes e depois
	je equals

	movl $1, %eax			# se não for igual, bit foi ativado
	jmp end

equals:
	movl $0, %eax			# se  for igual, bit não foi ativado

end:
    # epilogue
    popl %ebx
    movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
    popl %ebp # restore the previous stack frame pointer
    ret # the result in eax is returned
