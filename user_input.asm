;program to take user input and print it



BITS 32

extern printf
extern scanf

section .bss
string  resb 10

section .rodata
    enter_name: db "Enter your name", 10, 0
    good_moring: db "Good,Morning %s",10, 0

section .text
    global main

    main:
        push ebp
        mov ebp, esp

        push enter_name
        call printf
        add esp, 4

        mov eax, 3
        mov ebx, 2
        mov ecx, string  
        mov edx, 10          
        int 80h


        push string
        push good_moring
        call printf
        add esp, 4


        mov eax, 0
        mov esp, ebp
        pop ebp
        ret
