#include <stdio.h>
#include "asm.h"

int num = 5;
short x = 2;
int* ptrvec;

int main(){

int array [] = {1,2,2,3,4};
ptrvec = array;


printf("O valor de x (2) aparece mais do que uma vez?\nSim - 1 / Não - 0\nResposta  - %d\n",exists());	

return 0;
}
