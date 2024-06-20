#include <stdio.h>
#include "asm.h"

short int vec [] = {123, 12, 154, 102, 132, 164, 85 ,24, 155};
int num = 9;
short int *ptrvec = vec;

int main(void) {
	int i;
	
	for (i = 0; i < num; i++){
		printf("%d ", vec[i]);
	}	
	printf("\n");
	
	int ret = vec_zero();
	
	printf("O número de elementos superiores a 100 no array é de: %d\n", ret);
	
	printf("O vetor final é: ");
	for (i = 0; i < num; i++){
			printf("%d ", vec[i]);
	}	
	printf("\n");
	
	return 0;
}
