CC=gcc
CFLAGS=-Wall -g -I.
DEPS=hellomake.h
OBJ=hellomake.o hellofunc.o

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS) 

hellomake: $(OBJ)
	$(CC) $(CFLAGS) -o $@ $^

.PHONY: clean

clean:
	rm -f hellomake *.o *~

