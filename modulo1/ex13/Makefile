# A simple Makefile

prog: where_is.o main.o
	gcc where_is.o main.o -o prog

upper1.o: where_is.c
	gcc -g -Wall -c where_is.c -o where_is.o

main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o prog
	
run: prog
	./prog
