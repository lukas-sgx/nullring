ASM = nasm

SRC-BOOTLOADER = bootloader/legacy/bootloader.asm \

OUTPUT-BOOTLOADER = build/bootloader

all: build

build: $(SRC-BOOTLOADER)
	mkdir -p build
	$(ASM) $(SRC-BOOTLOADER) -o $(OUTPUT-BOOTLOADER)