#include <stdio.h>
#include <string.h>
#include "p_decimal.h"

int decimal(char*str){
int i=0;
int len=strlen(str);
int soma=0;
int conv=0;

for (i=0;i<len;i++){
	if(str[i]=='.'){
		for(i=i+1;i<len;i++){
			conv=(int)(str[i])-'0';
			soma= soma*10 + conv;
			}
		}		
	}
	return soma;
}
