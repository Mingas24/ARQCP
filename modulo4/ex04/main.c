#include <stdio.h>
#include "asm.h"

int main(){
	int num1 = 6;
	int num2 = 4;
	int res1 = 0;
	int* smaller = &res1;
	int res = sum_smaller(num1,num2,smaller);
	
	printf("A soma de %d com %d é %d. O valor mais pequeno é %d\n",num1,num2,res,*smaller);
	
	return 0;
}
