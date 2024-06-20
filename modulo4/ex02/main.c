#include <stdio.h>
#include "asm.h"

int main(){
	
	int n = 5;
	int res = 0;
	res = sum_n(n);
	
	printf("A soma de 1 até %d é %d\n",n,res);
	
	return 0;
}
