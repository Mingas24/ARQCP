#include <stdio.h>
#include "asm.h"

int main(){
	int x = 3;
	
	int res = count_bits_zero(x);
	
	printf("%d\n",res);
	
	return 0;
}
