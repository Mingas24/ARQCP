#include <stdio.h>
#include "asm.h"

int A = 2;
int B = 2;
int C = 4;
int D = 4;

int main(void){
	int ret;
	ret = compute();
	printf("A operação tem como resultado: %d\n", ret);
	return 0;
}
