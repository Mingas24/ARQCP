#include <stdio.h>
#include "capitalize.h"

int main(){
	char str[100] = "My favourite country is hawaii";
	char *ptr;
	ptr = str;
	capitalize (ptr);
	printf("%s \n", ptr);
	return 0;
}
