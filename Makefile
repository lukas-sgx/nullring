ASM = nasm

SRC-BOOTLOADER = bootloader/legacy.asm

OUTPUT-BOOTLOADER = build/bootloader.o

QEMU-EMU = qemu-system-x86_64

all: build

build: $(SRC-BOOTLOADER)
	mkdir -p build
	mkdir -p bin
	$(ASM) -f elf32 $(SRC-BOOTLOADER) -o $(OUTPUT-BOOTLOADER)
	ld $(OUTPUT-BOOTLOADER) -T linker/linker.ld -m elf_i386 -o bin/nullring --oformat binary 

qemu: build
	$(QEMU-EMU) -drive file=bin/nullring,format=raw