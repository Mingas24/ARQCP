#include <stdio.h>
#include "asm.h"

int vec [] = {257,2,15};
int num = 3;
int *ptrvec = vec;

int main() {

	int soma;
	soma = sum_first_byte();
	printf("A soma dos primeiros bytes é: %d\n", soma);
	return 0;
}
