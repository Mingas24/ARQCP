.section .text
    .global activate_2bits    # int activate_bit(int* ptr, int pos) 
   
activate_2bits:
# prologue
    pushl %ebp 
    movl %esp, %ebp 
    pushl %ebx
    pushl %edi
    
    movl 8(%ebp), %edi 			#save 1st param 
	movl 12(%ebp), %ecx 		#save 2nd param
		
	movl $1, %ebx				
	shll %cl, %ebx				#mascara para ativar determinado bit
	
	movl (%edi), %edx			#guarda valor de x em %edx
	orl %ebx, %edx				#aplica a mascara 
	
	movl $31, %ebx				
	subl %ecx, %ebx				# 31-pos
	movl %ebx, %ecx				# guarda em ecx o valor de bit p ativar
	
	movl $1, %ebx
	shll %cl, %ebx				#mascara para ativar o outro bit
	orl %ebx, %edx				#aplica a mascara 
	movl %edx, (%edi)			#guarda depois da aplicação
	
	
# epilogue
    popl %edi
    popl %ebx
    movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
    popl %ebp # restore the previous stack frame pointer
    ret # the result in eax is returned
