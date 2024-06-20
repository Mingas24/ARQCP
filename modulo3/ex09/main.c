#include <stdio.h>
#include "asm.h"

short vec [] = {3,19,24,12,15};
short num = 5;
short x = 12;
short *ptrvec = vec;

int main(void) {
	
	short* memoria = vec_search();
	printf("Endereço de memória do número x(12): %p\n", memoria);
	return 0;
}
