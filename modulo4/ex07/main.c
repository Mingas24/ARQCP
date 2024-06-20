#include <stdio.h>
#include "asm.h"

int main(){ 
	short v[] = {1,2,3,4};
	short *vec = v;
	int n = 4;
	int ret = 0;
	ret = count_even(vec, n);
	printf("There are %d even numbers\n", ret);
	return 0;
}
