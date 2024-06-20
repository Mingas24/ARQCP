#include <stdio.h>
#include "asm.h"

int main(void) {
	
	short ret;
	ret = crossSumBytes();
	printf("crossSumBytes= %hd\n", ret);
	return 0;
}
