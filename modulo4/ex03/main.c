#include <stdio.h>
#include "asm.h"

int main(){ 
	int res = 0;
	res = greatest(10,20,23);
	printf("Biggest number is: %d\n",res);
	return 0;
}
