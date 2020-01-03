all: control.o write.o control.o control_func.o
	gcc -o control control.o control_func.o
	gcc -o write write.o control_func.o

control.o: control.c control_func.h control_func.o
	gcc -c control.c

write.o: write.c control_func.h control_func.o
	gcc -c write.c

control_func.o: control_func.c control_func.h
	gcc -c control_func.c

clean:
	rm *o
	rm control
	rm write
	rm story