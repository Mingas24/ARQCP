#include <stdio.h>
#include "upper1.h"

int main(){
	//Criação da string
	char str[50] = "oliveira sao mateus \n";
	//Criação do apontador 
	char *ptr;
	//Atribui o local da memória da string ao apontador
	ptr= str;
	//Chama o metodo upper1
	upper1(ptr);
	printf("%s", ptr);
	return 0;
}
