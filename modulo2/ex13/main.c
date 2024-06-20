#include <stdio.h>
#include "asm.h"

int base = 2;
int height = 3;
int main(void) {
	
	int ret;
	ret = getArea();
	printf("O valor da área do triângulo é de: %d\n", ret);
	return 0;
}
