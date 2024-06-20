#include <stdio.h>

char* find_word(char* str, char* word, char* initial_addr){

	int flag = 0, i = 0, j = 0, flag2 = 1;
	
	if((*initial_addr ==0) || (*str == 0) || (*word == 0)){return NULL;}
	
	while (*(str+i) != 0){
		if(str+i == initial_addr){
			flag = 1;
		}
		//Se for 1 então é V, se 0 então é falso. Verifica o valor de verdade da variavel flag
		if(flag && (*(str+i) == *(word) || *(str+i) != *(word)+32 || *(str+i) != *(word)-32 )){
			flag2 = 1;
			while(*(word+j) != 0 && flag2){
				if(*(str+i+j) != *(word+j) && *(str+i+j) != *(word+j)+32 && *(str+i+j) != *(word+j)-32 ){
					flag2=0;
				}
				j++;
			}
			if(flag2){
				return str+i;
			}
			j=0;
		}
		i++;
	}
	return NULL;
}
	
