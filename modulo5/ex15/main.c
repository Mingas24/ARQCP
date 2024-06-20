#include <stdio.h>
#include <stdlib.h> 
#include "funcao.h"

int main(void){
	
	int num = 10;
	int *ptr = create_stack(num);
	
	int *ptr_temp = NULL;
	
	ptr = add_stack(ptr_temp,ptr, 12);
	
	ptr = remove_stack(ptr_temp,ptr, 10);
	
	free(ptr);	

	
	return 0;
}