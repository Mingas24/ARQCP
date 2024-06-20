main: asm.o main.o

asm.o: asm.c
	gcc -g -Wall -c asm.c -o asm.o

main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o main

run: main
	./main
