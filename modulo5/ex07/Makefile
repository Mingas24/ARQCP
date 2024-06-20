program: asm.o main.o
	gcc asm.o main.o  -o program
	
main.o: main.c
	gcc -g -Wall -c main.c
	
asm.o: asm.s
	gcc -g -Wall -c asm.s
	
clean:
	rm -f *.o program
	
run: program
	./program