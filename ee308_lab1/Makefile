PORT=COM5

main.hex: main.elf 
	avr-objcopy main.elf main.hex -O ihex

main.elf: main.o 
	avr-ld -o main.elf main.o -mavr6

main.o: main.s 
	avr-gcc -mmcu=atmega2560 -nostdlib -g main.s -o main.o


main.s: src/main.S
	avr-gcc -DF_CPU=16000000UL -mmcu=atmega2560 -E src/main.S -o main.s



clean: del *s *.o *.elf *.hex

dump: main.hex 
	avr-objdump -D -mavr6 main.hex > main.disassembly

flash: main.hex
	avrdude -v -patmega2560 -cstk500v2 -PCOM5 -b115200 -D -Uflash:w:main.hex
