program: funcao.o asm.o main.o
	gcc funcao.o asm.o main.o  -o program
	
main.o: main.c
	gcc -g -Wall -c main.c
	
funcao.o: funcao.c
	gcc -g -Wall -c funcao.c
	
asm.o: asm.s
	gcc -g -Wall -c asm.s
	
clean:
	rm -f *.o program
	
run: program
	./program