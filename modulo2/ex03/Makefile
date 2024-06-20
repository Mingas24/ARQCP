# A simple Makefile

main: main.o sum_v2.o
	gcc -Wall -g main.o sum_v2.o -o main
	
main.o: main.c sum_v2.h
	gcc -Wall -g -c main.c 
	
sum_v2.o: sum_v2.s
	gcc -Wall -g -c sum_v2.s
	
clean:
	rm -f *.o main
	
run: main
	./main

