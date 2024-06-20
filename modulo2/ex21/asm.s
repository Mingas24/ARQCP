.section .data
.global code
.global currentSalary


.section .text
.global new_salary #int new_salary(void)
new_salary:

# prologue
pushl %ebp      # save previous stack frame pointer
movl %esp, %ebp  # the stack frame pointer

cmp $10,code
je manager
cmp $11,code
je engineer
cmp $12,code
je technician
jmp other

manager:
movl currentSalary,%eax
addl $300,%eax
jmp end

engineer:
movl currentSalary,%eax
addl $250,%eax
jmp end

technician:
movl currentSalary,%eax
addl $150,%eax
jmp end

other:
movl currentSalary,%eax
addl $100,%eax
jmp end

jmp end
end:

# epilogue
movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
popl %ebp     #  restore the previous stack frame pointer
ret 	#returns both eax and edx 
