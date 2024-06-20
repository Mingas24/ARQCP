#include <stdio.h>
#include <string.h>

int palindrome(char *str){
	
	int i=0;
	int len = strlen(str);
	char array[1000000];
	char *ptr = array;
	int lixo=0;
	int j;

	while(i<len){
		if((str[i]!=' ' && str[i] != '.' && str[i] != ',')){
			*str = (str[i] >= 'a' && str[i] <= 'z') ? str[i]-32 : str[i];
			ptr ++;
			i++;
		}else{
			lixo++;
		}
	}
	
	for(j = 0; j < (len-lixo)/2; j++){
		if(array[j] != array[(len-lixo)-(j-1)]){
			return 0;
		}
	}
	return 1;
}

