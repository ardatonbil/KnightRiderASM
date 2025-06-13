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
                LDI R16, (1<<7)
                OUT ((((0x04) + 0x20)) - 0x20), R16
                JMP ON

ON:
    LDI R16, (1<<7)
    OUT ((((0x05) + 0x20)) - 0x20), R16
    SBIC ((((0X03) + 0x20)) - 0x20), 6
    RJMP OFF
    RJMP ON

OFF:
    LDI R16, 0x00
    OUT ((((0x05) + 0x20)) - 0x20), R16
    SBIC ((((0X03) + 0x20)) - 0x20), 5
    RJMP ON
    RJMP OFF
