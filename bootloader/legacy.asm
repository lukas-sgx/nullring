bits 16

section .text
global _bootstrap
extern kernel

_bootstrap:
    cli
    xor ax, ax
    mov ds, ax
    
    lgdt [gdt]
    mov eax, cr0
    or al, 1 ; enable A20
    mov cr0, eax
    
    jmp 0x8:protected_mode ; jump to kernel code segment into gdt
    
align 4
gdt_start:

    gdt_null:
        dq 0
    
    gdt_code:
        dw 0xFFFF    ; Limit (bits 0-15)
        dw 0x0000    ; Base (bits 0-15)
        db 0x00      ; Base (bits 16-23)
        db 10011010b ; Access byte (Pr, Priv 0, 1, Ex, DC, RW, Ac)
        db 11001111b ; Flags (Gr, Sz) + Limit (bits 16-19)
        db 0x00

    gdt_data:
        dw 0xFFFF    ; Limit (bits 0-15)
        dw 0x0000    ; Base (bits 0-15)
        db 0x00      ; Base (bits 16-23)
        db 10010010b ; Access byte (Pr, Priv 0, 1, Ex, DC, RW, Ac)
        db 11001111b ; Flags (Gr, Sz) + Limit (bits 16-19)
        db 0x00
gdt_end:
    
gdt:
    dw gdt_end - gdt_start - 1
    dd gdt_start

bits 32

protected_mode:
    mov ax, 0x10
    mov ds, ax
    mov ss, ax
    mov esp, 090000h

    ; call kernel
    jmp $