# Sample Operating System Makefile
# Author: KK

all: os-image.bin

bootloader.bin:
	nasm bootloader/boot.asm -f bin -o bootloader.bin

kernel.o: kernel/kernel.c
	i686-elf-gcc -ffreestanding -m32 -c kernel/kernel.c -o kernel.o

kernel.bin: kernel.o linker.ld
	i686-elf-ld -T linker.ld -o kernel.bin -m elf_i386 kernel.o

os-image.bin: bootloader.bin kernel.bin
	cat bootloader.bin kernel.bin > os-image.bin

run: os-image.bin
	qemu-system-i386 -drive format=raw,file=os-image.bin

clean:
	rm -f *.bin *.o *.img
