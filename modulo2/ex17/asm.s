.section .data
.global op1
.global op2

.section .text
.global sum
.global subtraction
.global multiplication
.global division
.global modulus
.global power2_op1
.global power2_op2
.global power3_op1
.global power3_op2

sum:
# prologue
pushl %ebp 			# save previous stack frame pointer
movl %esp, %ebp 	# the stack frame pointer for sum function

movl op1, %ecx 		#place op1 in ecx
movl op2, %eax 		#place op2 in eax
addl %ecx, %eax 	#add ecx to eax. Result is in eax

# epilogue
movl %ebp, %esp 	# restore the previous stack pointer ("clear" the stack)
popl %ebp 			# restore the previous stack frame pointer
ret

subtraction:
# prologue
pushl %ebp 			
movl %esp, %ebp 	

movl op2, %ecx 		#place op1 in ecx
movl op1, %eax 		#place op2 in eax
subl %ecx, %eax 	#add ecx to eax. Result is in eax

# epilogue
movl %ebp, %esp 	
popl %ebp 			
ret

multiplication:
# prologue
pushl %ebp 			
movl %esp, %ebp 	

movl $0, %edx			#copies 0 to edx
movl $0, %ecx			#copies 0 to ecx
movl $0, %eax       	#copies 0 to eax
movl op1, %ecx			#copies the value of op1 to ecx
movl op2, %eax			#copies the value of op2 to eax	
imull %ecx				#multiplies ecx with eax. Result stays edx:eax

# epilogue
movl %ebp, %esp 	
popl %ebp 			
ret

division:
# prologue
pushl %ebp 			
movl %esp, %ebp 	

movl $0, %edx			
movl $0, %ecx			
movl $0, %eax       	     
movl op1, %eax			#copies the value of op1 to eax
movl op2, %ecx			#copies the value of op2 to ecx	
idivl %ecx				#division of edx:eax to op2. Result stays eax

# epilogue
movl %ebp, %esp 	
popl %ebp 			
ret

modulus:
#prologue
pushl %ebp 			
movl %esp, %ebp

movl op1,%eax			#copies the value of op1 to eax
movl op2,%ecx			#copies the value of op2 to ecx
movl $0,%edx			#copies 0 to edx
divl %ecx				#divs ecx by ecx:eax
movl %edx,%eax

# epilogue
movl %ebp, %esp 	
popl %ebp 			
ret

power2_op1:
# prologue
pushl %ebp 			
movl %esp, %ebp 	

movl $0, %edx
movl $0, %ecx
movl $0, %eax       
movl op1, %ecx			#copies the value of op1 to ecx
movl op1, %eax			#copies the value of op1 to eax	
mull %ecx				#multiplies ecx with eax. Result stays edx:eax


# epilogue
movl %ebp, %esp 	
popl %ebp 			
ret

power2_op2:
# prologue
pushl %ebp 			
movl %esp, %ebp 	

movl $0, %edx
movl $0, %ecx
movl $0, %eax       
movl op2, %ecx			#copies the value of op2 to ecx
movl op2, %eax			#copies the value of op2 to eax	
mull %ecx				#multiplies ecx with eax. Result stays edx:eax


# epilogue
movl %ebp, %esp 	
popl %ebp 			
ret

power3_op1:
# prologue
pushl %ebp 			
movl %esp, %ebp 	

movl $0, %edx
movl $0, %ecx
movl $0, %eax       
movl op1, %ecx			#copies the value of op1 to ecx
movl op1, %eax			#copies the value of op1 to eax	
mull %ecx				#multiplies ecx with eax. Result stays edx:eax
mull %ecx				#multiplies ecx with eax. Result stays edx:eax


# epilogue
movl %ebp, %esp 	
popl %ebp 			
ret

power3_op2:
# prologue
pushl %ebp 			
movl %esp, %ebp 	

movl $0, %edx
movl $0, %ecx
movl $0, %eax       
movl op2, %ecx			#copies the value of op2 to ecx
movl op2, %eax			#copies the value of op2 to eax	
mull %ecx				#multiplies ecx with eax. Result stays edx:eax
mull %ecx				#multiplies ecx with eax. Result stays edx:eax


# epilogue
movl %ebp, %esp 	
popl %ebp 			
ret
