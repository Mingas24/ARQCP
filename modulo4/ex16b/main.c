#include <stdio.h>
#include "changes.h"

int main(void){
	int ptr = 0x00600000;
	changes(&ptr);
	printf("Valor:(0x%08x)\n",ptr);
	
	ptr = 0x00700000;
	changes(&ptr);
	printf("Valor:(0x%08x)\n",ptr);
	
	
	return 0;
}
