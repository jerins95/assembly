;assembly program to print even numbers from 1 to 100


BITS 32

extern printf


section .bss
iter:   resb    1

section .rodata
    output: db "%d",10, 0

section .text
    global main

    main:
        push ebp
        mov ebp, esp

        mov byte [iter], 2   

       l1:
        mov eax, [iter]
        push eax
        push output
        call printf
        add esp, 4

        
        add byte [iter], 2

        cmp byte [iter], 100
        jle l1



        mov eax, 0
        mov esp, ebp
        pop ebp
        ret
