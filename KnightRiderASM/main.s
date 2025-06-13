# 1 "src/main.S"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "src/main.S"
# 1 "c:\\users\\ardat\\desktop\\avr8-gnu-toolchain\\avr\\include\\avr\\io.h" 1 3
# 99 "c:\\users\\ardat\\desktop\\avr8-gnu-toolchain\\avr\\include\\avr\\io.h" 3
# 1 "c:\\users\\ardat\\desktop\\avr8-gnu-toolchain\\avr\\include\\avr\\sfr_defs.h" 1 3
# 100 "c:\\users\\ardat\\desktop\\avr8-gnu-toolchain\\avr\\include\\avr\\io.h" 2 3
# 174 "c:\\users\\ardat\\desktop\\avr8-gnu-toolchain\\avr\\include\\avr\\io.h" 3
# 1 "c:\\users\\ardat\\desktop\\avr8-gnu-toolchain\\avr\\include\\avr\\iom2560.h" 1 3
# 1578 "c:\\users\\ardat\\desktop\\avr8-gnu-toolchain\\avr\\include\\avr\\iom2560.h" 3
       
# 1579 "c:\\users\\ardat\\desktop\\avr8-gnu-toolchain\\avr\\include\\avr\\iom2560.h" 3

       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
# 175 "c:\\users\\ardat\\desktop\\avr8-gnu-toolchain\\avr\\include\\avr\\io.h" 2 3
# 627 "c:\\users\\ardat\\desktop\\avr8-gnu-toolchain\\avr\\include\\avr\\io.h" 3
# 1 "c:\\users\\ardat\\desktop\\avr8-gnu-toolchain\\avr\\include\\avr\\portpins.h" 1 3
# 628 "c:\\users\\ardat\\desktop\\avr8-gnu-toolchain\\avr\\include\\avr\\io.h" 2 3

# 1 "c:\\users\\ardat\\desktop\\avr8-gnu-toolchain\\avr\\include\\avr\\common.h" 1 3
# 630 "c:\\users\\ardat\\desktop\\avr8-gnu-toolchain\\avr\\include\\avr\\io.h" 2 3

# 1 "c:\\users\\ardat\\desktop\\avr8-gnu-toolchain\\avr\\include\\avr\\version.h" 1 3
# 632 "c:\\users\\ardat\\desktop\\avr8-gnu-toolchain\\avr\\include\\avr\\io.h" 2 3






# 1 "c:\\users\\ardat\\desktop\\avr8-gnu-toolchain\\avr\\include\\avr\\fuse.h" 1 3
# 639 "c:\\users\\ardat\\desktop\\avr8-gnu-toolchain\\avr\\include\\avr\\io.h" 2 3


# 1 "c:\\users\\ardat\\desktop\\avr8-gnu-toolchain\\avr\\include\\avr\\lock.h" 1 3
# 642 "c:\\users\\ardat\\desktop\\avr8-gnu-toolchain\\avr\\include\\avr\\io.h" 2 3
# 2 "src/main.S" 2

.section .data

.section .bss

.section .text
                .org 0x00
                RJMP RESET

RESET:
                ; Set 7 as output
                LDI R16, 0x80
                OUT ((((0x04) + 0x20)) - 0x20), R16

                ; pull-up resistors enabled
                LDI R16, 0x60
                OUT ((((0x05) + 0x20)) - 0x20), R16

ON:
                ; Turn on the LED
                IN R25, ((((0x05) + 0x20)) - 0x20)
                ORI R25, 0x80
                OUT ((((0x05) + 0x20)) - 0x20), R25

                ; Check if 6 is grounded
                IN R25, ((((0X03) + 0x20)) - 0x20)
                ANDI R25, 0x40
                CPI R25, 0
                BRNE ON

OFF:
                ; Turn off the LED
                IN R25, ((((0x05) + 0x20)) - 0x20)
                ANDI R25, 0x7F
                OUT ((((0x05) + 0x20)) - 0x20), R25

                ; Check if 5 is grounded
                IN R25, ((((0X03) + 0x20)) - 0x20)
                ANDI R25, 0x20
                CPI R25, 0
                BRNE OFF

                JMP ON ; Turn on if PB is low
