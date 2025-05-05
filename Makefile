asm:
	nasm -felf32 main.asm

bin:
	ld -m elf_i386 main.o -o main.out

run:
	./main.out
