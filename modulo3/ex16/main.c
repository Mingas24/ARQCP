#include <stdio.h>
#include "asm.h"

char vec1 [] = {1, 2, 3, 4, 5};
char vec2 [] = {6, 7, 8, 9, 0};
int num = 5;
char *ptr1 = vec1;
char *ptr2 = vec2;

int main(void) {
	
	int i;
	printf("vec1: ");
	for (i = 0 ; i < 5 ; i++){
	printf("%d", *(ptr1 + i));
	}
	printf("\nvec2: ");
	for (i = 0 ; i < 5 ; i++){
	printf("%d", *(ptr2 + i));
	}
	printf("\n");
	swap();
	printf("vec1: ");
	for (i = 0 ; i < 5 ; i++){
	printf("%d", *(ptr1 + i));
	}
	printf("\nvec2: ");
	for (i = 0 ; i < 5 ; i++){
	printf("%d", *(ptr2 + i));
	}
	printf("\n");
	return 0;
}
