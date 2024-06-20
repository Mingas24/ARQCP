program: funcao.o funcao2.o funcao3.o main.o
	gcc funcao.o funcao2.o funcao3.o main.o -o program
	
funcao.o: funcao.c
	gcc -g -Wall -c funcao.c 

funcao2.o: funcao2.c
	gcc -g -Wall -c funcao2.c 
	
funcao3.o: funcao3.c
	gcc -g -Wall -c funcao3.c 
	
main.o: main.c
	gcc -g -Wall -c main.c
	
clean:
	rm -f *.o program
	
run: program
	./program