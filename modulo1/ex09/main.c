#include <stdio.h>
#include "sort_without_reps.h"

int main(){
int vec1[] = {2,4,4,7,79,79,32,102,143,18,18,24,24,81,14,14,16,16};
int vec2[]={};
int contador=0;
int i;

contador=sort_without_reps(vec1,18,vec2);

printf("O novo vector é");
for(i = 0 ; i < contador ; i++){
printf(" %d ",*(vec2+i));
}
printf("e tem %d elementos\n",contador);
return 0;
}
