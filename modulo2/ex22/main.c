#include <stdio.h>
#include "asm.h"

int i = 3;
int j = 4;
int main(void){
	int res;
	res = f();
	printf("Result from f = %d\n",res);
	
	res = f2();
	printf("Result from f2 = %d\n",res);
	
	res = f3();
	printf("Result from f3 = %d\n",res);
	
	res = f4();
	printf("Result from f4 = %d\n",res);
	
	return 0;
}

