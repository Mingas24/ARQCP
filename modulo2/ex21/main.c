#include <stdio.h>
#include "asm.h"

int code = 10;
int currentSalary = 1000;

int main(void){
	short res;
	res = new_salary();
	printf("Result is %d.\n",res);
	return 0;
}
