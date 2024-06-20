program: main.o
	gcc main.o -o program
	
main.o: main.c
	gcc -g -Wall -c main.c
	
clean:
	rm -f *.o program
	
run: program
	./program