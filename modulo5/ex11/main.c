#include <stdio.h>
#include <stdlib.h>
#include "funcao.h"

int main(void){
	
	int lines, columns, i;
	lines = 3;
	columns = 3;
	
	int **matrix = new_matrix(lines, columns);

	printf("Endereço: %p \n", matrix );
	
	for ( i = 0; i < 3; i++){ free(*(matrix + i));}
	free(matrix);
	
	return 0;
}