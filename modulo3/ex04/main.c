#include <stdio.h>
#include "asm.h"

int vec1[] = {2,3,4,5};
int *ptrvec = vec1;
int num = 4;

int main(){
	
	int i = 0;
	
	printf("Vetor Inicial = ");
	for(i=0; i < num; i++){
		printf("%d ", vec1[i]);
	}
	printf("\n");
	vec_add_one();	
	printf("Vetor Final = ");
	for(i=0; i < num; i++){
		printf("%d ", vec1[i]);
	}
	printf("\n");
	
return 0;	
}
