#include <stdio.h>
#include "asm.h"

int* ptrvec;
int num = 9;

int main(){

int i;
int array [] = {1,2,3,2,3,4,1,3,8};
ptrvec = array;

printf("Array: ");
	for ( i = 0; i < num; i++){
		printf("%d ", *(ptrvec + i));
	}
	printf("\n");
int contador = count_seq();

printf("Número de vezes que a condição Vi < Vi+1 < Vi+2 se verifica é %d\n",contador);

return 0;
}
