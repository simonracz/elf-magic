# Elf-Magic
Code created during streaming

# Various Snippets for Building
```
gcc -Os -o ./hello ./hello.c
gcc -Os -o ./hello ./hello.c -Wl,-s
nasm -felf64 -o ./hello_asm.o ./hello_asm.asm
ld -o hello_asm ./hello_asm.o
ld -n -o hello_asm ./hello_asm.o
ld -N -o hello_asm ./hello_asm.o
ld -s -o hello_asm ./hello_asm.o
```

# Various Tools
```
nm ./hello_asm
readelf -a ./hello_asm
hexdump -C ./hello_asm
strace ./hello_asm
objdump -d -M intel ./hello_asm
```
