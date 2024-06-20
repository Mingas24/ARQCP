#include <stdio.h>
#include "asm.h"

int main(){
	
	int a = 0x1111111;
	int left = 30;
	int right = 3;
	int res = activate_invert_bits(a, left, right);
	printf("Num %x activated to the left of %d and to the right of %d with inverted bits: %x\n", a, left, right, res);
	return 0;
}
