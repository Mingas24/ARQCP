#include <stdio.h>
#include "struct.h"
#include "funcao.h"
#include "asm.h"

int main(void){
	
	Student students [5];
	
	char nome[80] = "joao mendes";
	char *name = nome;
	Student *s = students;
	
	char endereco[120] = "rua das quintaes, nº189";
	char *address = endereco;
	
	fill_student(&students[0], 18, 1, name, address);
	printf("%s\n", students[0].address);
	
	char endereco2[120] = "Rua Manuel Lemos";
	char *new_address = endereco2;
	update_address(s, new_address);
	printf("%s\n", students[0].address);
	return 0;
}
