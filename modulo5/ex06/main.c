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
	
	int new_grades[10] = {4,2,6,7,1,6,4,9,10,2};
	update_grades(s, new_grades);
	
	int minimum = 5;
	int vec[10];
	int *greater_grades = vec;
	printf("%d\n", locate_greater(s, minimum, greater_grades));
	
	return 0;
}