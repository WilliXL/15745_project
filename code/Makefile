all: NontemporalOptimization.so

CXXFLAGS = -rdynamic $(shell llvm-config-10 --cxxflags) -g -O0 -fPIC

Dataflow.o: Dataflow.cpp Dataflow.h
# Available_Support.o: available-support.cpp available-support.h

# Nontemporal.o: NontemporalOptimization

%.so: %.o Dataflow.o
	$(CXX) -dylib -shared $^ -o $@
clean:
	rm -f *.o *~ *.so
