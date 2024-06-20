#A simple Makefile 
ex12: capitalize main
	gcc capitalize main -o ex12
capitalize: capitalize.c
	gcc -g -Wall -c capitalize.c -o capitalize
main: main.c
	gcc -g -Wall -c main.c -o main
clean:
	rm -f *.ex12
run: ex12
	./ex12
