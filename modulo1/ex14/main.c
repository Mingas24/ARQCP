#include <stdio.h>
#include "frequencies.h"

int main(){
		float grades[11] = {0.0,1.2,3.2,4.3,5.4,6.56,7.65,8.98,9.12,10.22};
		int freq[21];
		
		frequencies(grades, 10, freq);
		int i;
		for(i=0; i<21; i++){
			printf("%d ", *(freq+i));
		}
		printf("\n");
		return 0;
}
