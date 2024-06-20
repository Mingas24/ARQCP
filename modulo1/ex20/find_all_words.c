#include <stdio.h>
#include "find_word.h"

void find_all_words(char* str, char* word, char** addrs){
	
	int i;
	char* aux = str;
	
	aux = find_word(str , word , aux);
	
	while(aux != NULL){
		*(addrs + i) = aux;
		i++;
		aux = find_word (str , word , aux + 1);
	}
}
