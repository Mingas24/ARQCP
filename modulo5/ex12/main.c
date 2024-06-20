#include <stdio.h>
#include "funcao.h"

int main(void){
	
	int lines, columns;
	lines = 3;
	columns = 3;

	int **m = new_matrix(lines, columns);
	printf("Endereço: %p \n", m);
	printf("%d\n", find_matrix(m, lines, columns, 0));
	return 0;
}