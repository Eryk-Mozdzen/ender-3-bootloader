
all: main.asm linker.ld
	mkdir -p build
	arm-none-eabi-as -o build/main.o main.asm
	arm-none-eabi-ld -Tlinker.ld -o build/bootloader-minimal.elf build/main.o
	arm-none-eabi-objcopy -O binary build/bootloader-minimal.elf build/bootloader-minimal.bin
	arm-none-eabi-objdump -j .text -D build/bootloader-minimal.elf > build/bootloader-minimal.dump
	rm build/main.o
	arm-none-eabi-size build/bootloader-minimal.elf

clean:
	rm build/*
