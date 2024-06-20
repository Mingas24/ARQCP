#include <stdio.h>
#include "palindrome.h"

int main(){

char str []= "Never odd or even";
//char str [] = {12344321};
int is_pal;

is_pal=palindrome(str);

if(is_pal==0){
	printf("Palindromo\n");
	}
if(is_pal==1){
printf("Não Palindromo\n");
}
return 0;
}
