#include <stdio.h>
#include "asm.h"

int main(){
	int ptr=24;
	int pos=19; // between 0 and 31
	int boolean=activate_bit( &ptr,  pos);
	if(boolean == 1){
		printf("O bit foi alterado\n");
		}else {
			printf("O bit não foi alterado\n");
			}
	return 0;
}

