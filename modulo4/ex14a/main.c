#include <stdio.h>
#include "asm.h"

int main(){
	int a=3;
	int b=9;
	
	int pos=1;
	
	int join_a_b=join_bits(a, b,  pos);
	printf("O resuktado da junção de a com b: %d\n", join_a_b);
	return 0;
}

