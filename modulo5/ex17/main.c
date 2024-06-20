#include <stdio.h>
#include <stdlib.h>
#include "struct.h"
#include "asm.h"

int main(void){

	int i;
	int j;
	
	structA **matrix = (structA**) malloc (4 * sizeof(int));
	for ( i = 0; i < 4; i++){
		*(matrix+i) = (structA *) malloc (3 *sizeof(structA));
	}
	
	unionB u1;
	structA s1;
	
	u1.b = 10;
	s1.a[0] = 1;
	s1.a[1] = 2;
	s1.a[2] = 3;
	s1.b = 'J';
	s1.c = 100000000000000;
	s1.d = 420;
	s1.ub = u1;
	s1.e = 'P';
	
	for ( i= 0; i < 4;i++){
		for ( j = 0; j < 3; j++){
			*(matrix + i) = &s1;
		}
	}

	i = 2;
	j = 3;
	
	printf("%d \n", sizeof(structA));
	printf("%c \n", return_unionB_b(matrix, i, j));
	
	for ( i = 0; i < 4; i++){ free(*(matrix + i));}
	free(matrix);
	
	return 0;
}