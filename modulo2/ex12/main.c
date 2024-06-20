#include <stdio.h>
#include "isMultiple.h"
	
int A = 10, B = 5;


	int main(void) {
	
	char retorno = isMultiple();
	if(retorno == 1){
		printf("Multiplo\n");
		}else{
		printf("Não multiplo\n");
	
	}
return 0;
}


