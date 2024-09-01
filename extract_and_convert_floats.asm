; ==========================
; Group member 01: Tinotenda_Chirozvi_22547747
; Group member 02: Tafara_Hwata_22565991
; Group member 03: Devan_Dewet_05169098
; ==========================


section .data
    prompt db "Enter values separated by whitespace and enclosed in pipes (|):", 0

section .bss
    buffer resb 256
    numFloats resd 1
    floats resq 1

section .text
    extern printf, fgets, malloc, strtof
    global extractAndConvertFloats

extractAndConvertFloats:
    ; Print prompt
    push prompt
    call printf
    add rsp, 8

    ; Read input
    push 256
    push buffer
