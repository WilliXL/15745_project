Below are a non-exhaustive list of llvm/clang instructions for creating the write type of files from the test cpp files

To build an executable of the test as is
```
clang -Xclang -O1 {test}.cpp -o {test}.out
```
Run this with `./{test}.out`

To create llvm bitcode file
```
clang -Xclang -O1 -emit-llvm -c {test}.cpp -o {test}.bc
```

Can create readable llvm file with
```
llvm-dis {test}.bc
```

Run llvm pass
```
opt -load {path-to-pass-file}.so -{pass-name} {bitcode}.bc -o {output}.bc
```

Make assembly file
```
llc {bitcode}.bc
```

Put asm through linker to create executable
```
clang -lstdc++ {asm-file}.s -o {executable}.out
```