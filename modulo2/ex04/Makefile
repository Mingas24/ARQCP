# A simple Makefile

prog: main.o sum3.o
	gcc -Wall -g main.o sum3.o -o prog
	
main.o: main.c
	gcc -Wall -g -c main.c -o main.o
	
sum3.o: sum3.s
	gcc -Wall -g -c sum3.s
	
clean:
	rm -f *.o prog
	
run: prog
	./prog
