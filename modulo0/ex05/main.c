#include "string_to_int.h"
#include <stdio.h>

int main(){
	
	char num[1000000];
	
	printf("Insira um número \n");
	//scanf(%s,&num);
	gets(num);
	printf("Número: %d\n", string_to_int(num));
	
	return 0;
}
