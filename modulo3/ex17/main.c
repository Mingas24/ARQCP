#include <stdio.h>
#include "asm.h"

int *ptrvec;
int num = 5;

int main(){
		
	int i;
	int array[] = {2,-1,5,3,10};
	ptrvec = array;
	
	printf("Array original: ");
	for ( i = 0 ; i < num ; i++){
		printf("%d ", *(ptrvec + i));
	}
	printf("\n\n");
	
	array_sort();
	
	printf("Array ordenado: ");
	for ( i = 0 ; i < num ; i++){
		printf("%d ", *(ptrvec + i));
	}
	printf("\n");
	
	return 0;
}
