#include <stdio.h>
#include "asm.h"

	int op1 = 2;
	int op2 = 0;
	
int main(){
	int ret;
	ret = sum();
	printf("Sum = %d\n", ret);

	ret = subtraction();
	printf("Subtraction = %d\n", ret);
	
	ret = multiplication();
	printf("Multiplication = %d\n", ret);

	ret = division();
	printf("Division = %d\n", ret);
	
	ret = modulus();
	printf("Modulos = %d\n", ret);
	
	ret = power2_op1();
	printf("Power 2 of op1 = %d\n", ret);
	
	ret = power2_op2();
	printf("Power 2 of op2 = %d\n", ret);
	
	ret = power3_op1();
	printf("Power 3 of op1 = %d\n", ret);
	
	ret = power3_op2();
	printf("Power 3 of op2 = %d\n", ret);
	
	return 0;
}
