# makefile for 'no'

CFLAGS  := -fopenmp
LDFLAGS := -lm
SOURCES := main.c
OBJECTS :=$(SOURCES:.cpp=.o)
EXECUTABLE := no

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(CFLAGS) $(OBJECTS) -o $@ $(LDFLAGS)

.cpp.o:
	$(CC) $(CFLAGS) -c $< -o $@ $(LDFLAGS)

clean:
	rm -f *.o $(EXECUTABLE) *.stackdump
