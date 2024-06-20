#include <string.h>
#include "struct.h"

void update_address(Student *s, char *new_address){
	strcpy(s->address, new_address);
}