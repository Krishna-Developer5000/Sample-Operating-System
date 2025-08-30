@echo off
echo 🔧 Compiling bootloader...
nasm boot\boot.asm -f bin -o bootloader.bin

echo 🧠 Compiling kernel...
i686-elf-gcc -ffreestanding -m32 -c kernel\kernel.c -o kernel.o

echo 🔗 Linking kernel...
i686-elf-ld -T linker.ld -o kernel.bin -m elf_i386 kernel.o

echo 🧬 Combining bootloader and kernel...
copy /b bootloader.bin + kernel.bin os-image.bin

echo 🚀 Running...
qemu-system-i386 -drive format=raw,file=os-image.bin

pause
