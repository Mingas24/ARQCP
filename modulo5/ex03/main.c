#include <stdio.h>
#include "struct.h"
#include "funcao.h"


int main(void){
	
	Student students [5];
	
	char nome[80] = "joao mendes";
	char *name = nome;
	
	char endereco[120] = "rua das quintaes";
	char *address = endereco;
	
	fill_student(&students[0], 18, 1, name, address);
	
	return 0;
}