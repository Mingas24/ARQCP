#include <stdio.h>
#include "struct.h"
#include "asm.h"


int main(void){
	
	s1 structure;
	
	fill_s1(&structure, 10, (char)'J', 01, (char)'M');
	
		printf("i: %d \n", structure.i);
		printf("c: %c \n", structure.c);
		printf("j: %d \n", structure.j);
		printf("d: %c \n", structure.d);

	return 0;
}