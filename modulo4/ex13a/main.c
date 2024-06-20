#include <stdio.h>
#include "asm.h"

int main(){
	
	int a = 2;
	int left = 3;
	int right = 3;
	int res = activate_bits(a, left, right);
	printf("Num %x activated to the left of %d and to the right of %d: %x\n", a, left, right, res);
	return 0;
}
