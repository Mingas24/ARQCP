# A simple Makefile

prog: main.o sum_and_subtract.o
	gcc -Wall -g main.o sum_and_subtract.o -o prog
	
main.o: main.c sum_and_subtract.h
	gcc -Wall -g -c main.c
	
sum_and_subtract.o: sum_and_subtract.s
	gcc -Wall -g -c sum_and_subtract.s
	
run: prog
	./prog

clean:
	rm *.o prog
