#include <avr/io.h>

.section .data

.section .bss

.section .text
                .org 0x00
                RJMP RESET

RESET:
                ; Set PB7 as output
                LDI         R16, 0x80
                OUT         _SFR_IO_ADDR(DDRB), R16

                ; pull-up resistors enabled
                LDI         R16, 0x60
                OUT         _SFR_IO_ADDR(PORTB), R16

ON:
                ; Turn on the LED
                IN          R25, _SFR_IO_ADDR(PORTB)
                ORI         R25, 0x80
                OUT         _SFR_IO_ADDR(PORTB), R25

                ; Check if PB6 is grounded 
                IN          R25, _SFR_IO_ADDR(PINB)
                ANDI        R25, 0x40
                CPI         R25, 0
                BRNE        ON

OFF:
                ; Turn off the LED
                IN          R25, _SFR_IO_ADDR(PORTB)
                ANDI        R25, 0x7F
                OUT         _SFR_IO_ADDR(PORTB), R25

                ; Check if PB5 is grounded
                IN          R25, _SFR_IO_ADDR(PINB)
                ANDI        R25, 0x20
                CPI         R25, 0
                BRNE        OFF
		
                JMP         ON ; Turn on if PB is low
