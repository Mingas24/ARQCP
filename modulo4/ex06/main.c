#include <stdio.h>
#include "asm.h"

int main(){

	char c1 [] = "12Ab";
	char c2 [] = "12Aa";
	char* a = c1;
	char* b = c2;
	int res = test_equal(a,b);
	if(res == 1){
		printf("a e b são iguais\n");
	}else{
		printf("a e b são diferentes\n");
	}

	
	return 0;
}
