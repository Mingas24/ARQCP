#include <stdio.h>
int main(){
	
int x = 5; //valor de x
int* xPtr = &x; //lugar na memória
float y = *xPtr + 3; // muda o valor de x
int vec[] = {10, 11, 12, 13};
int* xPtr2=vec;
int i;

printf("Valor de x:%d \n",x);
printf("Valor de y:%f \n",y);
printf("Endereço de x:%p \n",xPtr);
printf("Endereço de xPtr:%p \n",&xPtr);
printf("O valor apontado por xPtr:%d \n",*xPtr);
printf("O endereço de vec:%p \n",xPtr2);
for (i=0;i<4;i++){
	printf("O valor do vetor na posição %d é %d \n",i,vec[i]);
}
for (i=0;i<4;i++){
	printf("O endereço do vetor na posição %d é %p \n",i,&vec[i]);
}
return 0;
}
/**b) O array vec é um array de int, logo cada posição ocupa 4 bytes. Assim sendo a diferença entre cada posição é de 4 bytes(c,00,04,08)
//c) O endereço atríbuido a cada variável é aleatório, logo computadores diferentes guardam uma variável X de valor 5 em sitios diferentes da memória.
Também cada sistema operativo representa a memória de forma distinta, como por exemplo Linux e Windows**/
