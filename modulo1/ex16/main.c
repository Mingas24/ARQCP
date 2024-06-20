#include <stdio.h>
#include "where_exists.h"

int main(){
	char str1[] = {"tudo"};
	char str2[] = {"OLA tudo"};
	
	if(where_exists(str1,str2)==NULL){
		printf("Not the same\n");
	} else{
		printf("Same\n");
	}
	return 0;
}
