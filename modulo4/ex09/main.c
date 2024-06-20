#include <stdio.h>
#include "asm.h"

int main(){ 
	int a = 1, b = 2;
	int res = calculate(a, b);
	printf("(%d+%d)-(%d*%d) = %d\n",a, b, a, b, res);
	return 0;
}

void print_result(char op, int o1, int o2, int res){
	printf("%d %c %d = %d\n", o1, op, o2, res);
}
