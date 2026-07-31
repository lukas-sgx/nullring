ENTRY(_bootstrap)

SECTIONS {
    . = 0x07C00;

    .text   : { *(.text) }
    .rodata : { *(.rodata) }
    .data   : { *(.data) }
    .bss    : { *(.bss) }

    . = 0x07C00 + 510;
    .sign : {
        SHORT(0xAA55);
    }
}