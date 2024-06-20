#include <stdio.h>
#include <string.h>
#include "string_to_int.h"

int string_to_int(char *str){
int i=0;
int tamanho=strlen(str);
int soma=0;

for (i=0;i<tamanho;i++){
	soma = soma * 10 + (str[i]-'0');
}
return soma;
}
