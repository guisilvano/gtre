IDIR = ./include
CC = gcc
CFLAGS = -Wall -I $(IDIR)

SDIR = ./src
LDIR = ./lib
ODIR = ./src/obj

BUILD_ODIR := $(shell mkdir -p $(ODIR))

LIBS = -lncurses

_OBJ = main.o player.o
OBJ = $(patsubst %,$(ODIR)/%,$(_OBJ))

_DEPS =
DEPS = $(patsubst %,$(IDIR)/%,$(_DEPS))

$(ODIR)/%.o: $(SDIR)/%.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

gtre: $(OBJ)
	gcc -o $@ $^ $(CFLAGS) $(LIBS)

.PHONY: clean

clean:
	rm -r -f $(ODIR) *~ core $(INCDIR)/*~ 
