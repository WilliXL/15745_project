all: RangeAnalysis.so

CXXFLAGS = -rdynamic $(shell llvm-config-9 --cxxflags) -g -O0 -fPIC

%.so: %.o
	$(CXX) -dylib -shared $^ -o $@
clean:
	rm -f *.o *~ *.so
