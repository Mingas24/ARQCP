#include <stdio.h>
#include "asm.h"

int main(void){
	
	int matriz[2][3] = {{2,1,-1}, {4,5,7}};
	int y = 2;
	int k = 3;
	int *ptr = &matriz[0][0];
	int **pptr = &ptr;

	printf("Resultado: %d \n", count_odd_matrix(pptr, y, k));
	
	return 0;
}