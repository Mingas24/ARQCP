#include "string_to_int.h"
#include "media.h"
#include <stdio.h>

int main(){
	
	char num1[1000000];
	char num2[1000000];
	
	
	printf("Insira um número \n");
	scanf("%s",num1);
	//gets(num1);
	int n1=string_to_int(num1);
	printf("Insira outro número \n");
	scanf("%s",num2);
	//gets(num2);
	int n2=string_to_int(num2);
	printf("A média é:%f\n", media(n1,n2));
	//printf("A média é: %f \n", media(string_to_int(num1),string_to_int(num2)));
	return 0;
}
