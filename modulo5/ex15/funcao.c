#include <stdlib.h> 

int *create_stack(int num){
	
	int *ptr;
	
	ptr = (int *) calloc((num) , sizeof(int));
	
	return ptr;
}