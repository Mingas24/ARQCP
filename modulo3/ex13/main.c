#include <stdio.h>
#include "asm.h"

int vec [] = {10, -1, 4,-7, -13, 24};
int num = 6;
int *ptrvec = vec;

int main(void) {
	int i;
	printf("Vetor original: ");
	for(i = 0 ; i < num ; i++){
		printf("%d ", *(ptrvec + i));
	}
	printf("\n");
	keep_positives();
	
	printf("Vetor modificado: ");
	for(i = 0 ; i < num ; i++){
		printf("%d ", *(ptrvec + i));
	}
	printf("\n");
	
	return 0;
}
