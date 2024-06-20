#include <stdio.h>
#include "upper2.h"

int main(){
	//Criação da string
	char str[50] = "Joao de Deus\n";
	//Criação do apontador 
	char *ptr;
	//Atribui o local da memória da string ao apontador
	ptr= str;
	//Chama o metodo upper1
	upper2(ptr);
	printf("%s", ptr);
	return 0;
}
