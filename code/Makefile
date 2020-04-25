all: SymbolicRangeAnalysis.so

CXXFLAGS = -D_GLIBCXX_USE_CXX11_ABI=0 -rdynamic $(shell llvm-config-9 --cxxflags) -g -O0 -fPIC -fno-rtti

%.so: %.o
	$(CXX) -dylib -shared $^ -o $@ -D_GLIBCXX_USE_CXX11_ABI=0 -fno-rtti
clean:
	rm -f *.o *~ *.so
