CC = g++
CCFLAGS =

ifeq ($(OS),Windows_NT)
	# Windows flags, don't yet include gsl
	CCFLAGS += -mwindows -std=c++11
else
	UNAME := $(shell uname)

	ifeq ($(UNAME),Linux)
		CCFLAGS += -std=gnu++11
	endif

	# Mac flags, don't yet include gsl
	ifeq ($(UNAME),Darwin)
		#CCFLAGS += -framework GLUT -framework OPENGL
	endif
endif

all:
	$(CC) main.cpp lattice.cpp rule.cpp -o slitherlink $(CCFLAGS)
clean:
	rm *.o slitherlink
