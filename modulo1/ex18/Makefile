#A simple Makefile
ex18: shorts main
	gcc shorts main -o ex18
shorts: compress_shorts.c
	gcc -g -Wall -c compress_shorts.c -o shorts
main: main.c
	gcc -g -Wall -c main.c -o main
clean:
	rm -f */ex18
run: ex18
	./ex18
