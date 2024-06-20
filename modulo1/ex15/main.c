#include <stdio.h>
#include "populate.h"
#include "check.h"
#include "inc_nsets.h"

int main(){
	
	int i;
	int vec[100];
	int* ptr = vec;
	
	populate(ptr,100,20);
	for (i = 0 ; i < 100 ; i++){
		if(check(*(ptr + i) , *(ptr + i + 1), *(ptr + i + 2))){
			printf("%d ,%d ,%d\n",*(ptr + i) , *(ptr + i + 1), *(ptr + i + 2));
			inc_nsets();
		}
	}
	extern int contador;
	printf("Número de vezes que a condição se verifica: %d\n", contador);
	
	return 0;
}
