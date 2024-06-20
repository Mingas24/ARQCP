#include <stdio.h>
#include "swap.h"

int main(){
	
	int vec1 [] = {62,24,154,73,102,22,143,81,132,14,16,149,115,63,46,133,129,8,40};
	int vec2 [] = {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18};
	int size = 19;
	int* ptr1 = vec1;
	int* ptr2 = vec2;
	int i;
	
	printf("Vector 1 original: ");
	for(i = 0; i < size ; i++){
	printf("%d ",*(vec1 + i));
	}
	printf("\nVector 2 original: ");
	for(i = 0; i < size ; i++){
	printf("%d ",*(vec2 + i));
	}
	
	swap(ptr1,ptr2,size);
	
	printf("\nVector 1 mudado: ");
	for(i = 0; i < size ; i++){
	printf("%d ",*(vec1 + i));
	}
	printf("\nVector 2 mudado: ");
	for(i = 0; i < size ; i++){
	printf("%d ",*(vec2 + i));
	}
	printf("\n");
	return 0;
}
