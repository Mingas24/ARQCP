#include <stdio.h>
#include "asm.h"

int vec [] = {1, 0, 3, 4, 5, 4};
int num = 6;
int *ptrvec = vec;
int even = 0;

int main(){
	test_even();
	int retorno = vec_sum_even();
	printf("A soma de valores pares existentes no vetor é de : %d\n", retorno);
	return 0;	
}
