#include <stdio.h>
#include "asm.h"

long long int vec [] = {1,0,-1,21};
int num = 4;
long long int *ptrvec = vec;

int main() {
	int soma = vec_greater20();
	printf("O número de elementos superiores a 20: %d\n", soma);
	return 0;
}
