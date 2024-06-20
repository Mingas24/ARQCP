#include <stdio.h>
#include "asm.h"

int main(){
	int date1 = 0x01ffff00;
	int date2 = 0x02ffff00;
			
	int res = greater_date(date1, date2);
	if (date1 == date2){
	printf("The dates are the same\n");	
	}else{
	printf("The greater date is: %x\n", res);		
	}
	return 0;

}
