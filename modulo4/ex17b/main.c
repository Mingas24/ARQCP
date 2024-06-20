#include <stdio.h>
#include "asm.h"

int main()	{
char x = 3;
	int vec1[] = {6, 2, 3, 4, 5, 6, 7};
	int vec2[vec1[0]+1];
	int i = 0;
	printf("Inicial Vector:\n");
	for(i = 0; i < vec1[0]+1; i++){
		printf("%d (%x)", vec1[i], vec1[i]);
	}					
			
	int* ptr1 = vec1;
	int* ptr2 = vec2;
	add_byte(x, ptr1, ptr2);
	printf("\nFinal vector after sum of %d to the last byte of each:\n", x);
	for(i = 0; i < vec2[0]+1; i++){
		printf("%d (%x)", vec2[i], vec2[i]);
	}	
	printf("\n");
	
	return 0;

}
