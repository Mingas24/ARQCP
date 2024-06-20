#include <stdio.h>
#include <string.h>

int where_is (char *str, char c, int *p){

	int i;
	int j = 0;
	int len = strlen(str);


		for (i = 0 ; i < len ; i++){
			if(*(str + i) == c){
				*(p + j) = i;
				j++;
			}
		}
	return j;
}
