IDIR=include
ODIR=obj
LDIR=lib

LIBS=-lm

CC=gcc
CFLAGS=-Wall -g -I$(IDIR)

_DEPS=hellomake.h
DEPS=$(patsubst %,$(IDIR)/%,$(_DEPS))

_OBJ=hellomake.o hellofunc.o
OBJ=$(patsubst %,$(ODIR)/%,$(_OBJ))

$(ODIR)/%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS) 

hellomake: $(OBJ)
	$(CC) $(CFLAGS) $(LIBS) -o $@ $^

.PHONY: clean

clean:
	rm -f hellomake core $(ODIR)/*.o *~ $(INCDIR)/*~

