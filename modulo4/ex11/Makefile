# A simple Makefile
main: rotate_right.o rotate_left.o main.o
	gcc rotate_right.o rotate_left.o main.o -o main
	
rotate_right.o: rotate_right.c
	gcc -g -Wall -c rotate_right.c -o rotate_right.o
	
rotate_left.o: rotate_left.c
	gcc -g -Wall -c rotate_left.c -o rotate_left.o

main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o main
	
run: main
	./main
debug: 
	gdb -tui main
