#include <stdio.h>
#include "asm.h"

int *ptrfreq;
int num = 23;
char *ptrgrades;

int main(){
	
	char array_grades[] =  {0,4,4,4,5,5,5,7,9,8,10,11,12,12,12,13,14,14,15,17,18,18,20}; 
	ptrgrades = array_grades;
	int array_freq[21];
	ptrfreq = array_freq;
	int i;
		
	printf("Notas: ");
	for ( i = 0; i < num; i++){
		printf("%d ", *(ptrgrades + i));
	}
	printf("\n");
	
	frequencies();
	
	printf("\n\nFrequencia Absoluta: ");
	for ( i = 0; i < 21; i++){
		printf("%d ", *(ptrfreq + i));
	}
	printf("\n");
	
	return 0;
}
