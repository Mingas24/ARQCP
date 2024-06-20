#include <string.h>
#include <stdlib.h>

char *new_str(char str[80]){
	int i;
	for (i = 0; str[i] != '\0'; i++);
	char* ptr = (char *) malloc(i * sizeof(char));
	strcpy(ptr, str);
	return ptr;
}