CC = gcc
RM = rm -f
MV = mv
BIN = bin/
SRC = src/

install: compile

compile: $(BIN)lstree

$(BIN)lstree: $(BIN)main.o
	$(CC) $(BIN)main.o -o $(BIN)lstree

$(BIN)main.o: $(SRC)main.c
	$(CC) -c $(SRC)main.c -o $(BIN)main.o

clean:
	$(RM) $(BIN)*.o $(BIN)lstree