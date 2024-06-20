#include <stdio.h>
char* where_exists(char* str1, char* str2){
	int a = 0;
	//Percorre o string 2
	while(*str2 !=0){
		//Verifica se o primeiro caracter do primeiro e igual ao do segundo
		if(*str2 == *str1){
			int i = 0;
			//Percorre o string 1
			while(*(str1+i) != 0){
				//Verifica se os caracteres sao iguais
				if(*(str1+i) != *(str2+i)){
					a = 1;
				}
				i++;
			}
			//Confirma se os caracteres se confirmam 
			if (a == 0){
				return str2;
			} else{
				a = 0;
			}
		}
		str2++;
	}
	return NULL;
}
