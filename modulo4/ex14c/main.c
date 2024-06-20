#include <stdio.h>
#include "join_bits.h"
#include "mixed_sum.h"

int main(void) {
	
	int a = 3;
	int b = 24;
	int pos = 2;
	int res = mixed_sum(a, b, pos);
	printf("A junção é %d\n",res);
	return 0;
}
