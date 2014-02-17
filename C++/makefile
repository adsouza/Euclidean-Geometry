CC=g++
CFLAGS=-c -Wall
SOURCES=main.cc circle.cc square.cc rectangle.cc shape.cc
OBJECTS=$(SOURCES:.cc=.o)
EXECUTABLE=euclidean_geometry

all: $(OBJECTS)
	$(CC) $(OBJECTS) -o $(EXECUTABLE)

.cpp.o:
		$(CC) $(CFLAGS) $< -o $@

clean:
		rm -rf *.o $(EXECUTABLE)
