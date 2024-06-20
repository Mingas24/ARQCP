# A simple Makefile

prog: swap.o main.o
	gcc swap.o main.o -o prog

upper1.o: swap.c
	gcc -g -Wall -c swap.c -o swap.o

main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o prog
	
run: prog
	./prog
