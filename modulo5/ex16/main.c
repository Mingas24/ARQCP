#include <stdio.h>
#include <stdlib.h>
#include "struct.h"
#include "asm.h"

int main(){	
	group gp;
	
	gp.n_students = 5;
	gp.individual_grades = (unsigned char*) malloc(gp.n_students * sizeof(char));
	unsigned char *a = gp.individual_grades;
	int i;
	for (i = 0; i < gp.n_students; i++){
		*(a+i) = 0b01111111;
		printf("%d\n", *(a+i));
	}
	
	printf("%d\n", approved_semester(&gp));
	return 0;
}