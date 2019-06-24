; assembly program to print fibonacci numbers


BITS 32

extern printf
extern scanf

section .bss
c: resb 1
num : resb 5


section .data
    formatin : db "%d",0
    integer:times 4 dd 0
    a : dd 0
    b : dd 1


section .rodata
    output: db "%d",10,0
    fib: db "Fibonacci series",10,0
    enter: db "Enter your value ", 10, 0

section .text
    global main

    main:
        push ebp
        mov ebp, esp


        push enter
        call printf
        add esp, 4

        push integer
        push formatin
        call scanf


        push fib
        call printf
        add esp, 4



        cmp byte[integer], 1
        jl exit
        mov eax, 0
        push eax
        push output
        call printf
        add esp, 4
        
        cmp byte[integer],2
        jl exit
        mov eax, 1
        push eax
        push output
        call printf
        add esp, 4

        cmp byte[integer],3
        jl exit





        mov byte [c],3 

        l1:
        mov eax, [a]
        mov ebx, [b]
        add eax, ebx
        
        mov [a], ebx
        mov [b], eax
        
        push eax
        push output
        call printf
        add esp, 4


        add byte [c], 1



        mov ebx, [c]
        mov edx, [integer]

        cmp ebx, edx
        jle l1




        exit:
        mov eax, 0
        mov esp, ebp
        pop ebp
        ret
