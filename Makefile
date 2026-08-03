.PHONY: assemble link

link:
	@ld ./out/*.o -o ./bin/main

assemble:
	@nasm -f elf64 main.asm    -o ./out/main.o
	@nasm -f elf64 mfree.asm   -o ./out/mfree.o
	@nasm -f elf64 rdfile.asm  -o ./out/rdfile.o
	@nasm -f elf64 malloc.asm  -o ./out/malloc.o
	@nasm -f elf64 filesz.asm  -o ./out/filesz.o
	@nasm -f elf64 getargv.asm -o ./out/getargv.o
