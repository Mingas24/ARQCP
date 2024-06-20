#include <stdio.h>
#include "asm.h"

int main(void) {
	int ptr=1;
	int pos=4; // between 0 and 31
	activate_2bits( &ptr,  pos);
	printf("\n*ptr: %d\n pos: %d\n", ptr, pos);
	return 0;
}
