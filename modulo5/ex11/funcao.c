#include <stdlib.h> 
#include <struct.h>

int **new_matrix(int lines, int columns){
	
	structA **ptr;
	int i;
	
	ptr = ( structA **) malloc( (lines) * sizeof(structA));
	
	for (i = 0; i < lines; i++){
		ptr[i] = ( structA*) malloc(columns * sizeof(structA));
	}
	
	return ptr;
}