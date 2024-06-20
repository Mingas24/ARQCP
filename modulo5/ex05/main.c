#include <stdio.h>
#include "struct.h"
#include "funcao.h"
#include "asm.h"


int main(void){
	
	Student students [5];
	
	char nome[80] = "joao mendes";
	char *name = nome;
	
	char endereco[120] = "rua das quintaes";
	char *address = endereco;
	
	int new_grades[10] = {10,10,10,10,10,10,10,10,10,10};
	
	fill_student(&students[0], 18, 1, name, address);
	update_grades(&students[0], new_grades);
	
	int i;
	for ( i = 0; i < 10; i++){
		printf("%d ", students[0].grades[i]);
	}
	printf("\n");
	return 0;
}