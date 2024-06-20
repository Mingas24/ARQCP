#include <stdio.h>
#include "asm.h"

short current=2;
short desired=12;

int main(void) {
	
	int ret;
	ret = needed_time();
	printf("Para se alterar a temperatura são necessários: %d segundos\n", ret);
	return 0;
}
