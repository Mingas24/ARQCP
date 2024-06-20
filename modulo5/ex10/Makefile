progex10: funcao.o main.o
	gcc funcao.o main.o -o progex10
	
funcao.o: funcao.c
	gcc -g -Wall -c funcao.c 
	
main.o: main.c
	gcc -g -Wall -c main.c
	
clean:
	rm -f *.o progex10
	
run: progex10
	./progex10