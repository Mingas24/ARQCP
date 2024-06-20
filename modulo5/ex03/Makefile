program: funcao.o main.o
	gcc funcao.o main.o -o program
	
main.o: main.c
	gcc -g -Wall -c main.c
	
funcao.o: funcao.c
	gcc -g -Wall -c funcao.c
	
clean:
	rm -f *.o program
	
run: program
	./program