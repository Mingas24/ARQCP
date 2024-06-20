program: funcao.o main.o
	gcc funcao.o main.o -o program
	
funcao.o: funcao.c
	gcc -g -Wall -c funcao.c 
	
main.o: main.c
	gcc -g -Wall -c main.c
	
clean:
	rm -f *.o program
	
run: program
	./program