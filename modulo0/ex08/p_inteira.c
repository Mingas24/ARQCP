#include <stdio.h>
#include <string.h>
#include "p_inteira.h"

int inteira(char*str){
int i=0;
int len=strlen(str);
int soma=0;
int conv=0;

for(i=0;i<len;i++){
	if(str[i]=='.'){
		i=len;
		}else{
		conv=(int)(str[i])-'0';
		soma= soma*10 + conv;
		}
	}
	return soma;
}
