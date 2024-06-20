#A simple Makefile
ex14: frequencies main
	gcc frequencies main -o ex14
frequencies: frequencies.c
	gcc -g -Wall -c frequencies.c -o frequencies
main: main.c
	gcc -g -Wall -c main.c -o main
clean:
	rm -f *.ex14
run: ex14
	./ex14
