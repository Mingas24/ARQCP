#include <stdio.h>
#include "asm.h"

int main(void) {
	
	int a = 3;
	int b = 24;
	int pos = 3;
	int res = join_bits(a, b, pos);
	printf("A junção de a com b é %d\n",res);
	return 0;
}
