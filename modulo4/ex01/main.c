#include <stdio.h>
#include "asm.h"

int main(){ 
	int x = 2, ret = 0;
	ret = cube(x);
	printf("The cube of %d is: %d\n", x, ret);
	return 0;
}
