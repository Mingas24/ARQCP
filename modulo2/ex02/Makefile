# A simple Makefile

main: main.o asm.o
	gcc -Wall -g main.o asm.o -o main
	
main.o: main.c
	gcc -Wall -g -c main.c -o main.o
	
asm.o: asm.s
	gcc -Wall -g -c asm.s
	
clean:
	rm -f *.o main
	
run: main
	./main

