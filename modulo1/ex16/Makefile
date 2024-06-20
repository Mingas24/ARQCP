#A simple Makefile
ex16: exists main 
	gcc exists main -o ex16
exists: where_exists.c
	gcc -g -Wall -c where_exists.c -o exists
main: main.c
	gcc -g -Wall -c main.c -o main
clean:
	rm -f */ex16
run: ex16
	./ex16
