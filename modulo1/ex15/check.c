#include "check.h"
#include "stdio.h"

int check ( int x, int y, int z){
		
		if(x<y && y<z){
			return 1;
		}
		return 0;
}

