#include <stdio.h>
#include "changes.h"

int main(void) {
	
	int ptr = 0x00130000;
	changes(&ptr);
	printf("O valor é:(0x%08x)\n",ptr);
	
	ptr = 0x00030000;
	changes(&ptr);
	printf("O valor é:(0x%08x)\n",ptr);
	
	return 0;
}
