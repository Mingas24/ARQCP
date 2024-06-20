# A simple Makefile
program: counter.o main.o
	gcc counter.o main.o -o capelinha
counter.o: counter.c
	gcc -g -Wall -c counter.c -o counter.o
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
clean:
	rm -f *.o capelinha
run: program
	./capelinha
