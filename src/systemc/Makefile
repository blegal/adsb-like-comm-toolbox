CC=g++
CFLAGS=-O3 -Wall -Wno-unknown-pragmas -I/opt/systemc/include -std=c++14
LDFLAGS=-L/opt/systemc/lib -lsystemc
EXEC=main
SRC=./src/main.cpp

OBJ= $(SRC:.cpp=.o)

all: $(EXEC)
	./bin/main

main: $(OBJ)
	$(CC) $(CFLAGS) -o ./bin/$@ $^ $(LDFLAGS)

%.o: %.cpp
	$(CC) $(CFLAGS) -o $@ -c $< $(CFLAGS)

.PHONY: clean mrproper

clean: $(OBJ)
	find ./src/ -name "*.o"  -exec rm {} \;
	find ./bin/ -name "main" -exec rm {} \;

mrproper: clean
	rm $(EXEC)
