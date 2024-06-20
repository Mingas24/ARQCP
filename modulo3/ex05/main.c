#include <stdio.h>
#include "asm.h"

int vec [] = {15,4,11,7,13};
int num = 5;
int *ptrvec = vec;

int main(void) {
	
	int media;
	int soma = vec_sum();
	printf("Soma: %d\n", soma);
	media = vec_avg(); 
	printf("Média: %d\n", media); 
	return 0;
}
