#include <stdio.h>
#include "test_flags.h"

int op1=2147483647;
int op2=2147483647;

int main(){

char boolean;

boolean=test_flags();

	if(boolean == 1){
	printf("Ocorreu carry ou overflow\n");
}
	if(boolean == 0){
	printf("Não ocorreu carry ou overflow\n");
	}
	return 0;
}
