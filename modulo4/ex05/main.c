#include <stdio.h>
#include "asm.h"

int main(){ 
	int v2 = 2, ret = 0;
	int v1 = 123;
	ret = inc_and_square(&v1, v2);
	printf("%d, %d\n", v1, ret);
	return 0;
}
