main: main.o steps.o
	gcc -Wall -g main.o steps.o -o main
main.o: main.c steps.h
	gcc -Wall -g -c main.c
steps.o: steps.s
	gcc -Wall -g -c steps.s
run: main
	./main
clean:
	rm *.o main
