/* linker.ld - Linker script for KK's kernel */

ENTRY(main)

SECTIONS
{
    . = 0x1000; /* Kernel load address after bootloader */

    .text : {
        *(.text)
    }

    .data : {
        *(.data)
    }

    .bss : {
        *(.bss)
    }
}
