; boot.asm - BIOS Bootloader

[org 0x7C00]        ; BIOS loads bootloader here

start:
    mov ah, 0x0E    ; BIOS teletype mode (print char)
    mov al, 'K'     ; Print the letter 'K'
    int 0x10        ; Call BIOS interrupt to print

    jmp $
times 510 - ($ - $$) db 0  ; Fill to 512 bytes
dw 0xAA55                 ; Boot signature (required)
