#include <stdio.h>
#include "asm.h"

short s=7;

int main(void) {
	
	short retorno;
	retorno = swapBytes();
	printf("swapBytes= %hu\n", retorno);
	return 0;
}
