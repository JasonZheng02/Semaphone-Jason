all: main.o write.o main.o control.o
	gcc -o main main.o control.o
	gcc -o write write.o control.o

main.o: main.c control.h control.o
	gcc -c main.c

write.o: write.c control.h control.o
	gcc -c write.c

control.o: control.c control.h
	gcc -c control.c

clean:
	rm *o
	rm main
	rm write
	rm story