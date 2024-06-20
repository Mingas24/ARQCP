#include <stdio.h>
#include "asm.h"

int num = 10;
int* ptrsrc;
int* ptrdest;

int main(){

int arraySrc [] = {1,3,-12,19,25,24,1,-9,-9,17};
ptrsrc = arraySrc;
int arrayDest[10];
ptrdest = arrayDest;
int i;

printf("Vetor inicial: ");
	for ( i = 0; i < num; i++){
		printf("%d ", *(ptrsrc + i));
	}

int contador = sort_without_reps();

	printf("\nQuantidade de números no vetor modificado : %d\n",contador);


return 0;
}
