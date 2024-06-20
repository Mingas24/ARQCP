#include <stdlib.h> 

int **new_matrix(int lines, int columns){
	
	int **ptr;
	int i;
	
	ptr = ( int **) calloc( (lines), sizeof(int));
	
	for (i = 0; i < lines; i++){
		ptr[i] = ( int *) calloc(columns, sizeof(int));
	}
	
	return ptr;
}