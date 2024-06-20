#include <stdlib.h> 
int *add_stack(int *ptr_temp, int *ptr, int num){
	
	ptr_temp = (int *) realloc(ptr, (num) * sizeof(int));
	
	if ( ptr_temp != NULL){
		ptr = ptr_temp;
		ptr_temp = NULL;
	}
	
	return ptr;
	
}