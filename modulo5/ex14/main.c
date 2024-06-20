#include <stdio.h>
#include <stdlib.h>
#include "funcao.h"

int main(void){
	
	int lines, columns, i;
	lines = 3;
	columns = 3;
	
	int **a = new_matrix(lines, columns);
	int **b = new_matrix(lines, columns);
	
	int **sum = add_matrixes(a, b, lines, columns);

	printf("Endereço: %p \n", sum);
	
	for ( i = 0; i < lines; i++){
		free(*(a + i));
		free(*(b + i));
		free(*(sum + i));
	}
	free(a);
	free(b);
	free(sum);
	
	return 0;
}