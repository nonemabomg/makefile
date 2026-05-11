CXX      = g++
CPPFLAGS = -Wall -ggdb
MAIN     = test
OBJ      = $(MAIN).o HStack.o

$(MAIN).exe: $(OBJ)
	$(CXX) $(CPPFLAGS) $^ -o $@

$(OBJ): HStack.hpp

run: $(MAIN).exe
	./$(MAIN).exe

clean:
	RM -f *.o *.exe

.PHONY: all run clean

all: $(MAIN).exe run clean