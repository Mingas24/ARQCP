#include <stdio.h>
#include "where_is.h"

int main(){
	
char palavra[] ={"banana"};
int contagem[100];
char comparar = 'a';
int i;

int contador = where_is(palavra,comparar,contagem);

printf("A letra %c aparece no index: ", comparar);
for(i=0;i<contador;i++){
printf("%d ",*(contagem + i));
}
printf("e aparece %d vezes na palavra %s.\n",contador,palavra);

return 0;
}
