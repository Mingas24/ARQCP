#include <stdio.h>
#include "asm.h"

short s1= 0x6;
short s2= 0x7;

int main(void) {
	
	short ret;
	ret = crossSumBytes();
	printf("crossSumBytes= %hd\n", ret);
	return 0;
}
