#include <stdio.h>
#include "asm.h"

char byte1=0xA;
char byte2=0xB;

int main(void) {
	
	short ret;
	ret = concatBytes();
	printf("concatBytes= %hd\n", ret);
	return 0;
}
