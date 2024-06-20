#include <stdio.h>
#include "sum2ints.h"

int op1;
int op2;

int main(){

op1=0xFFFFFFF;
op2=1;

long long soma = sum2ints();
printf("%lld\n",soma);
return 0;
}
