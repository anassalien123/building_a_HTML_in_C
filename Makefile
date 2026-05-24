CC = cc
CFLAGS = -O2 -Wall -std=c2x

SRC = hyperbird.c
OBJ = hyperbird.o
TARGET = hyperbrid

all: clean $(TARGET)

$(TARGET): $(OBJ)
	$(CC) $(OBJ) -o $@

$(OBJ): $(SRC) hyperbrid.h
	$(CC) $(CFLAGS) -c $(SRC)

clean:
	rm -f *.o $(TARGET)

.PHONY: all clean