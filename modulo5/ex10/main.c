#include <stdio.h>
#include <stdlib.h>
#include "funcao.h"

int main(){
	char str[80] = "17589524774";
	char *ptr = new_str(str);
	printf("%c\n", *ptr);
	return 0;
}